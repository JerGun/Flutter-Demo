import 'package:flutter/material.dart';

class HalfSkills extends StatelessWidget {
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
    return MaterialApp(
      home: Scaffold(
          body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
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
                      style: Theme.of(context).textTheme.bodyText1,
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
          ),
          SizedBox(
            height: 200,
            child: VerticalDivider(
              color: Colors.white,
              thickness: 0.3,
            ),
          ),
          Expanded(
            child: Column(
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
                      style: Theme.of(context).textTheme.bodyText1,
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
          )
        ],
      )),
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

