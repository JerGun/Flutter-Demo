import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

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
              Experiences(),
              SizedBox(height: 25),
              Skills(),
              SizedBox(height: 30),
              Education(),
            ],
          ),
        ),
      ),
    );
  }
}

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/education.svg',
              color: Colors.yellow[700],
              width: 25,
            ),
            SizedBox(width: 10),
            Text(
              'Education',
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
        SizedBox(height: 10),
        InfoDetails(
          date: '2019 - Present',
          title: 'Bachelor of Engineering in Software Engineering',
          subTitle: 'University of Phayao',
          color: Colors.yellow[700],
        ),
        SizedBox(height: 15),
        InfoDetails(
          date: '2009 - 2019',
          title: 'Sceience and Mathematics',
          subTitle: 'Chiangrai Vidhayakhome School',
        ),
      ],
    );
  }
}

class Experiences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/experience.svg',
              color: Colors.yellow[700],
              width: 25,
            ),
            SizedBox(width: 10),
            Text(
              'Experiences',
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
        SizedBox(height: 10),
        InfoDetails(
          date: '03/2021',
          title: 'Hackaton Boot Camp (Attend)',
          subTitle: '20Scoops CNX Co., Ltd.,',
        ),
        SizedBox(height: 15),
        InfoDetails(
          date: '04 - 05/2021',
          title: 'Backend Developer (Internship)',
          subTitle: 'OneDee Solution Co., Ltd.,',
        ),
      ],
    );
  }
}

class InfoDetails extends StatelessWidget {
  const InfoDetails({
    Key? key,
    required this.date,
    required this.title,
    required this.subTitle,
    this.color = Colors.grey,
  }) : super(key: key);

  final String date;
  final String title;
  final String subTitle;
  final color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: (color)!),
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(date,
                  style: Theme.of(context)
                      .textTheme
                      .apply(bodyColor: color)
                      .bodyText2),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 5),
        Text(
          subTitle,
          style: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.grey[400])
              .bodyText1,
        ),
      ],
    );
  }
}

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/code.svg',
                  color: Colors.yellow[700],
                  width: 25,
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
            SkillDetails(text: 'Data Structures & Algorithms'),
            SizedBox(height: 5),
            SkillDetails(text: 'Programming Languages'),
            SizedBox(height: 5),
            SkillDetails2(text: 'Javascript'),
            SizedBox(height: 5),
            SkillDetails2(text: 'Kotlin'),
            SizedBox(height: 5),
            SkillDetails2(text: 'Java'),
            SizedBox(height: 5),
            SkillDetails2(text: 'Dart'),
            SizedBox(height: 5),
            SkillDetails2(text: 'Python'),
            SizedBox(height: 5),
            SkillDetails(text: 'Version Control'),
            SizedBox(height: 5),
            SkillDetails2(text: 'GitHub'),
            SizedBox(height: 5),
            SkillDetails2(text: 'GitLab'),
            SizedBox(height: 5),
            SkillDetails(text: 'Databases'),
            SizedBox(height: 5),
            SkillDetails2(text: 'MongoDB'),
            SizedBox(height: 5),
            SkillDetails2(text: 'SQL'),
          ],
        ),
        SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  color: Colors.yellow[700],
                  width: 25,
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
            SkillDetails(text: 'Reasoning & Problem Solving'),
            SizedBox(height: 5),
            SkillDetails(text: 'Collaboration'),
            SizedBox(height: 5),
            SkillDetails(text: 'Communication'),
            SizedBox(height: 5),
            SkillDetails(text: 'Active learning'),
            SizedBox(height: 5),
            SkillDetails(text: 'Adaptability'),
          ],
        ),
      ],
    );
  }
}

class SkillDetails extends StatelessWidget {
  const SkillDetails({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check,
          color: Colors.yellow[700],
          size: 25,
        ),
        SizedBox(width: 10),
        Flexible(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}

class SkillDetails2 extends StatelessWidget {
  const SkillDetails2({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
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
              color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
          child: Transform.scale(
            scale: 0.8,
            child: IconButton(
                onPressed: openFacebook,
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
              color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
          child: Transform.scale(
            scale: 0.8,
            child: IconButton(
              onPressed: openGitHub,
              icon: SvgPicture.asset(
                'assets/icons/github.svg',
                color: Colors.yellow[700],
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
          child: Transform.scale(
            scale: 0.8,
            child: IconButton(
              onPressed: openGitLab,
              icon: SvgPicture.asset(
                'assets/icons/gitlab.svg',
                color: Colors.yellow[700],
              ),
            ),
          ),
        )
      ],
    );
  }

  openFacebook() async {
    await FlutterWebBrowser.openWebPage(
      url: 'https://www.facebook.com/GongPawaret/',
      customTabsOptions:
          CustomTabsOptions(colorScheme: CustomTabsColorScheme.dark),
    );
  }

  openGitHub() async {
    await FlutterWebBrowser.openWebPage(
      url: 'https://github.com/JerGun',
      customTabsOptions:
          CustomTabsOptions(colorScheme: CustomTabsColorScheme.dark),
    );
  }

  openGitLab() async {
    await FlutterWebBrowser.openWebPage(
      url: 'https://gitlab.com/JerGun',
      customTabsOptions:
          CustomTabsOptions(colorScheme: CustomTabsColorScheme.dark),
    );
  }
}
