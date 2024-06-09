import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../model/modelData.dart';

class VotingScreen extends StatefulWidget {
  final List<ModelData> items;

  const VotingScreen({super.key, required this.items});

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = widget.items[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  height: 160,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '$index).',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              item.name ?? 'No Name',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.black,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
