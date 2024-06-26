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
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  height: 140,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                '${index + 1}.',
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              item.name ?? 'No Name',
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 60,
                              width: 200,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 200,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ],
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
    );
  }
}
