import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.03,
                backgroundColor: Colors.deepPurpleAccent,
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.height * 0.03 - 1.5,
                  backgroundImage: NetworkImage(
                    'https://c.pxhere.com/photos/da/49/face_facial_hair_fine_looking_guy_man_model_person_portrait-1563283.jpg!d',
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height * 0.02),
              Text(
                'Привет, Иван',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month, color: Colors.deepPurple),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.black38,
                  elevation: 4,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.deepPurple),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Colors.black38,
                  elevation: 4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
