import 'package:flutter/material.dart';

class ReminderTask extends StatelessWidget {
  ReminderTask({super.key});
  List<String> reminderTask = [
    "Online Class Routine",
    "Office Work List",
    "day Task List",
    "Monthly Task Routine"
  ];
  List<String> reminderTaskDate = [
    "Save Date: 05/01/2023",
    "Save Date: 01/01/2023",
    "Save Date: 12/12/2022",
    "Save Date: 01/12/2022"
  ];
  List<String> reminderTaskImage = [
    "assets/images/3.png",
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png"
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
            children: [
              Text(
                "Reminder Task",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 160.0,
              ),
              Text(
                "See All",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 150,
            width: 450,
            child: ListView.builder(
                itemCount: reminderTask.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              reminderTaskImage[index],
                              height: 50,
                              width: 70,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              reminderTask[index],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              reminderTaskDate[index],
                              style: TextStyle(color: Colors.grey),
                            ),
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
