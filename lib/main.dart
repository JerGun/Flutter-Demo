import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Resume());
}

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'Prompt',
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 20, color: Colors.white),
            headline2: TextStyle(fontSize: 18, color: Colors.white),
            bodyText1: TextStyle(fontSize: 16, color: Colors.white),
            bodyText2: TextStyle(fontSize: 14, color: Colors.white),
          )),
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Info(),
              SizedBox(height: 30),
              Social(),
              SizedBox(height: 30),
              Skills(),
              SizedBox(height: 25),
              Text(
                'Experiences',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Education',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  final List<String> technicalSkills = [
    'Data Structures & Algorithms',
    'Programming Languages',
    'Version Control',
    'Databases'
  ];
  final List<String> softSkills = [
    'Reasoning & Problem Solving',
    'Collaboration',
    'Communication',
    'Active learning',
    'Adaptability'
  ];
  final List<String> versionControl = ['GitHub', 'GitLab'];
  final List<String> languages = [
    'Javascript',
    'Kotlin',
    'Java',
    'Dart',
    'Python'
  ];
  final List<String> databases = ['MongoDB', 'SQL'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  color: Colors.yellow[700],
                  size: 25,
                ),
                SizedBox(width: 10),
                Text(
                  'Technical Skills',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              child: Divider(
                color: Colors.white,
                thickness: 0.2,
              ),
            ),
            SkillDetails(
                skills: technicalSkills,
                languages: languages,
                versionControl: versionControl,
                databases: databases),
          ],
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.chat,
                  color: Colors.yellow[700],
                  size: 25,
                ),
                SizedBox(width: 10),
                Text(
                  'Soft Skills',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SizedBox(
              child: Divider(
                color: Colors.white,
                thickness: 0.2,
              ),
            ),
            SkillDetails(skills: softSkills),
          ],
        ),
      ],
    );
  }
}

class SkillDetails extends StatelessWidget {
  const SkillDetails({
    Key? key,
    required this.skills,
    this.languages = const [],
    this.versionControl = const [],
    this.databases = const [],
  }) : super(key: key);

  final List<String> skills, languages, versionControl, databases;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i in skills)
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.yellow[700],
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      i,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              if (i == 'Programming Languages')
                for (var i in languages)
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(
                            Icons.add,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              i,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
              if (i == 'Version Control')
                for (var i in versionControl)
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(
                            Icons.add,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              i,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
              if (i == 'Databases')
                for (var i in databases)
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(
                            Icons.add,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              i,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
            ],
          ),
      ],
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            width: 100,
            height: 100,
            image: AssetImage('assets/images/profile.jpg'),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pawaret Muengkaew',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 10),
            Text(
              'Software Engineering',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.yellow[700]),
                SizedBox(width: 10),
                Text(
                  'Chiangrai, Thailand',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey[700], borderRadius: BorderRadius.circular(10)),
          child: Transform.scale(
            scale: 0.8,
            child: IconButton(
                onPressed: null,
                icon: SvgPicture.asset(
                  'assets/icons/facebook.svg',
                  color: Colors.yellow[700],
                )),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey[700], borderRadius: BorderRadius.circular(10)),
          child: Transform.scale(
            scale: 0.8,
            child: IconButton(
                onPressed: null,
                icon: SvgPicture.asset(
                  'assets/icons/github.svg',
                  color: Colors.yellow[700],
                )),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey[700], borderRadius: BorderRadius.circular(10)),
          child: Transform.scale(
            scale: 0.8,
            child: IconButton(
                onPressed: null,
                icon: SvgPicture.asset(
                  'assets/icons/gitlab.svg',
                  color: Colors.yellow[700],
                )),
          ),
        )
      ],
    );
  }
}
