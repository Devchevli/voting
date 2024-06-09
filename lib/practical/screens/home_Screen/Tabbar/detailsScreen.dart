import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import '../../../../model/modelData.dart';
import 'modi_Screen.dart';

class Detail_Screen extends StatefulWidget {
  const Detail_Screen({super.key});

  @override
  State<Detail_Screen> createState() => _Detail_ScreenState();
}

class _Detail_ScreenState extends State<Detail_Screen> {
  List<ModelData> dataList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      String jsonString =
      await rootBundle.rootBundle.loadString("jsonData/data.json");
      List<dynamic> jsonList = json.decode(jsonString);
      setState(() {
        dataList = jsonList.map((json) => ModelData.fromJson(json)).toList();
      });
    } catch (e) {
      log("Error loading json data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    final item = dataList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersonDetail(
                              selectedindex: index,
                              imageUrl: item.image ?? '', details: item.discribtion??'  aaa',
                            ),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 250,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: size.height / 4.9,
                              width: size.width / 2.7,
                              decoration: BoxDecoration(
                                image: item.image != null && item.image!.isNotEmpty
                                    ? DecorationImage(
                                  image: NetworkImage(item.image!),
                                  fit: BoxFit.cover,
                                )
                                    : null,
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: item.image == null || item.image!.isEmpty
                                  ? const Icon(Icons.image, size: 50, color: Colors.white)
                                  : null,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.name ?? 'No Name',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23,
                                    ),
                                  ),
                                  Text(
                                    item.party ?? 'No Party',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: item.sign != null && item.sign!.isNotEmpty
                                        ? NetworkImage(item.sign!)
                                        : null,
                                    child: item.sign == null || item.sign!.isEmpty
                                        ? const Icon(Icons.image, size: 20, color: Colors.white)
                                        : null,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
