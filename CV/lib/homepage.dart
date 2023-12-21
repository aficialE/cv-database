import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'skills.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'My Curriculum Vitae',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 179, 170, 77),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/ericka.jpg',
                ),
                radius: 60.0,
              ),
            ),
            Divider(height: 30, color: Color.fromARGB(255, 66, 66, 66)),
            Center(
              child: Text(
                "Name:",
                style: TextStyle(
                    color: const Color.fromARGB(255, 179, 170, 15),
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                "Ericka Joy E. Aficial",
                style: TextStyle(
                    color:Color.fromARGB(255, 179, 170, 0),
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Center(
              child: Text(
                "Position:",
                style: TextStyle(
                    color: const Color.fromARGB(255, 179, 170, 15),
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                "IT",
                style: TextStyle(
                    color: Color.fromARGB(255, 179, 170, 0),
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Divider(height: 30, color: Color.fromARGB(255, 66, 66, 66)),
            Text(
              "Contact me at:",
              style: TextStyle(
                  color: const Color.fromARGB(255, 179, 170, 15),
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.mail, color: const Color.fromARGB(255, 179, 170, 15)),
                SizedBox(width: 8.0),
                Text(
                  "aficialericka36@gmail.com",
                  style: TextStyle(color: Color.fromARGB(255, 179, 170, 0)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.call, color: Color.fromARGB(255, 179, 170, 15)),
                SizedBox(width: 8.0),
                Text(
                  "09150463403",
                  style: TextStyle(color: const Color.fromARGB(255, 179, 170, 0)),
                )
              ],
            ),
            Divider(height: 30, color: Color.fromARGB(255, 66, 66, 66)),
            Text(
              "Social Media:",
              style: TextStyle(
                  color: const Color.fromARGB(255, 179, 170, 15),
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.facebook,
                    color: const Color.fromARGB(255, 179, 170, 15)),
                SizedBox(width: 8.0),
                Text(
                  "Ericka Joy E. Aficial",
                  style: TextStyle(color: Color.fromARGB(255, 179, 170, 0)),
                )
              ],
            ),
            SizedBox(
              width: 15,
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.info,
                      color: const Color.fromARGB(255, 179, 170, 15)),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EducationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.school,
                      color: const Color.fromARGB(255, 179, 170, 15)),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SkillsScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.settings,
                      color: const Color.fromARGB(255, 179, 170, 15)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
