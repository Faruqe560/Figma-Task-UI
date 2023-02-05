import 'package:flutter/material.dart';

class AllTask extends StatelessWidget {
  AllTask({super.key});
  List<String> reminderTask = [
    "Online Class Routine",
    "Office Work List",
    "day Task List",
    "Monthly Task Routine",
    "Online Class Routine",
    "Office Work List",
  ];
  List<String> reminderTaskDate = [
    "Save Date: 05/01/2023",
    "Save Date: 01/01/2023",
    "Save Date: 12/12/2022",
    "Save Date: 01/12/2022",
    "Save Date: 01/01/2023",
    "Save Date: 12/12/2022",
  ];
  List<String> reminderTaskImage = [
    "assets/images/3.png",
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/3.png",
    "assets/images/1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reminder Task",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 160.0,
              ),
              Text(
                "See All",
                style: TextStyle(color: Color.fromARGB(255, 72, 70, 70)),
              ),
            ],
          ),
          SizedBox(
            height: 350,
            width: 380,
            child: ListView.builder(
                itemCount: reminderTask.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 5.0, right: 5.0, bottom: 10.0),
                    child: Container(
                      height: 90,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              reminderTaskImage[index],
                              height: 50,
                              width: 70,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 19,
                                ),
                                Text(
                                  reminderTask[index],
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  reminderTaskDate[index],
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
