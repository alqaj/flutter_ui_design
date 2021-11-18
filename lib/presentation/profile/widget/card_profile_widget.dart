import 'package:flutter/material.dart';
import 'package:latihan06/presentation/profile/widget/information_text_widget.dart';

class CardProfileWidget extends StatelessWidget {
  const CardProfileWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 250,
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset.fromDirection(0.5),
                  spreadRadius: 1.0,
                  blurRadius: 5,
                ),
              ]),
          child: Column(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                  height: 160,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/people.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      // Flexible(child: Container())
                      Flexible(
                        child: Container(
                            margin: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Park Eun Bin",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 10,
                                // ),
                                const Text(
                                  "Model / Actrees",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Flexible(
                                  child: Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const InformationTextWidget(info: "Articles", value: "65",),
                                        const InformationTextWidget(info: "Followers", value: "68K",),
                                        const InformationTextWidget(info: "Ratings", value: "10",),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  )),
              Expanded(
                // flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          style: roundedButtonStyle(),
                          onPressed: () {},
                          child: const Text(
                            "Chat",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          style: roundedButtonStyle(),
                          onPressed: () {},
                          child: const Text(
                            "Follow",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        );
  }

  ButtonStyle roundedButtonStyle() {
    return ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
      10,
    ))));
  }
}