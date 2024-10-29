import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joseph Sameh Fouad',
      home: MyPortfolioPage(),
    );
  }
}

class MyPortfolioPage extends StatelessWidget {
  const MyPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Joseph Sameh Fouad",
          style: TextStyle(
              color: Colors.white, fontSize: screenWidth > 400 ? 30 : 10),
        ),
        leading: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 9),
                child: const Column(
                  children: [
                    Header(),
                    SizedBox(height: 30),
                    Skills(),
                    SizedBox(height: 50),
                    DevPhilosophy(),
                    SizedBox(height: 20),
                    MyWork(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              const Quote(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 9),
                child: const Column(
                  children: [
                    SizedBox(height: 20),
                    WhatIDo(),
                    SizedBox(height: 20),
                    GetInTouch(),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bigFontSize = screenWidth * 0.08;

    return Container(
      width: screenWidth,
      color: Colors.black,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "JOSEPH SAMEH",
              style: TextStyle(
                  fontSize: bigFontSize,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              "Software developer",
              style: TextStyle(fontSize: bigFontSize / 3, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      height: screenWidth > 1300 ? screenWidth / 4 : screenWidth / 2,
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/joseph_sameh.jpg",
              height: screenWidth > 1300 ? screenWidth / 4 : screenWidth / 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              heightFactor: 3,
              alignment: Alignment.bottomRight,
              child: Text(
                "Work with Me",
                style: TextStyle(
                    color: Colors.white,
                    decorationColor: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: screenWidth / 60),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Kotlin / Flutter \nHTML/CSS/Js/Django\nPython/SQL/CPP/C#\nJava / OOP / GitHub\nDesign patterns\nAgile Methodologies",
                style:
                    TextStyle(color: Colors.white, fontSize: screenWidth / 40),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DevPhilosophy extends StatelessWidget {
  const DevPhilosophy({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Development\nPhilosophy",
          style: TextStyle(color: Colors.white, fontSize: screenWidth / 22),
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * 0.3,
            ),
            Text(
              "I prioritize creating user-centric, high-performance apps with\nclean, maintainable code. My focus is on intuitive design,\nensuring seamless experiences that align with user needs. \nI believe in continuous learning, adopting the latest technologies to\ndrive innovation. Collaboration and clear communication are key\nin my development process, alongside a strong commitment to\nsecurity and privacy. By embracing feedback and iterative\nimprovement, I aim to build scalable, reliable apps that deliver\nlong-term value for users and businesses alike.",
              style: TextStyle(color: Colors.white, fontSize: screenWidth / 70),
            ),
          ],
        ),
      ],
    );
  }
}

class MyWorkItem {
  final String title;
  final String description;

  MyWorkItem({required this.title, required this.description});
}

final List<MyWorkItem> workItems = [
  MyWorkItem(
      title: "TODO app",
      description: "Android Kotlin mobile app, with local database"),
  MyWorkItem(
      title: "Job search web app",
      description: "made with (HTML, CSS, Js, Django framework, SQLite)"),
  MyWorkItem(
      title: "Faculty system windows forms Desktop app",
      description: "made with (C#, MS SQL server)"),
  MyWorkItem(
      title: "E-Commerce app", description: "made with (Kotlin, Firebase)"),
];

class MyWork extends StatelessWidget {
  const MyWork({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My work",
          style: TextStyle(color: Colors.white, fontSize: screenWidth / 22),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: workItems.length * 120,
          child: ListView.builder(
            itemCount: workItems.length,
            itemBuilder: (context, index) {
              final item = workItems[index];
              return ListTile(
                title: Row(
                  children: [
                    Text("● ",
                        style: TextStyle(
                            color: Colors.white, fontSize: screenWidth / 100)),
                    Text(item.title,
                        style: TextStyle(
                            color: Colors.white, fontSize: screenWidth / 50)),
                  ],
                ),
                subtitle: Row(
                  children: [
                    SizedBox(
                      width: screenWidth / 50,
                    ),
                    Text("○ ",
                        style: TextStyle(
                            color: Colors.white, fontSize: screenWidth / 160)),
                    Text(item.description,
                        style: TextStyle(
                            color: Colors.grey, fontSize: screenWidth / 80)),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Quote extends StatelessWidget {
  const Quote({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth,
        height: screenWidth / 3,
        child: Stack(children: [
          Container(
              child: Image.asset(
            "assets/images/img.png",
            width: screenWidth,
            height: screenWidth / 3,
            fit: BoxFit.cover,
          )),
          Center(
              child: Text(
            "Every client brief is a story\nwaiting to be told.",
            style: TextStyle(color: Colors.white, fontSize: screenWidth / 40),
          ))
        ]));
  }
}

class WhatIDOItem {
  final String title;
  final String description;

  WhatIDOItem({required this.title, required this.description});
}

final List<MyWorkItem> whatIDOItems = [
  MyWorkItem(
      title: "Windows Forms\nApplications",
      description:
          "I develop robust desktop applications using Windows Forms, integrated with MS SQL Server for seamless data management."),
  MyWorkItem(
      title: "Web Applications",
      description:
          "I create dynamic web applications using HTML, CSS, JavaScript, and Django, with SQLite as the backend database for streamlined data storage."),
  MyWorkItem(
      title: "Android Kotlin Applications",
      description:
          "I build efficient Android applications with local databases or Firebase for cloud-based storage and real-time synchronization."),
];

class WhatIDo extends StatelessWidget {
  const WhatIDo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What I Do",
          style: TextStyle(color: Colors.white, fontSize: screenWidth / 22),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: screenWidth / 5,
          width: screenWidth,
          child: ListView.builder(
            itemCount: whatIDOItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = whatIDOItems[index];
              return SizedBox(
                width: screenWidth / 4,
                child: ListTile(
                  title: Text(item.title,
                      style: TextStyle(
                          color: Colors.white, fontSize: screenWidth / 60)),
                  subtitle: Text(item.description,
                      style: TextStyle(
                          color: Colors.grey, fontSize: screenWidth / 80)),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class GetInTouch extends StatelessWidget {
  const GetInTouch({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Get in Touch",
          style: TextStyle(color: Colors.white, fontSize: screenWidth / 22),
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Container(
              width: screenWidth / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactLink("LinkedIn", "linkedin.com/in/joseph-sameh",
                      "https://www.linkedin.com/in/joseph-sameh", screenWidth),
                  const SizedBox(
                    height: 20,
                  ),
                  ContactLink("GitHub", "github.com/Joseph-Sameh-0",
                      "https://github.com/Joseph-Sameh-0", screenWidth),
                  const SizedBox(
                    height: 20,
                  ),
                  ContactLink("Email", "joseph.sameh.fouad@gmail.com",
                      "mailto:joseph.sameh.fouad@gmail.com", screenWidth),
                  const SizedBox(
                    height: 20,
                  ),
                  ContactLink(
                      "Phone", "+201118295474", "tel:+201118295474", screenWidth),
                ],
              ),
            ),
            Image.asset(
              "assets/images/joseph_sameh.jpg",
              height: screenWidth / 4,
            )
          ],
        )
      ],
    );
  }
}

Widget ContactLink(String title, String link, String uri, double screenWidth) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: screenWidth / 50),
      ),
      RichText(
        text: TextSpan(
          // text: link,
          children: <TextSpan>[
            TextSpan(
              text: link,
              style: const TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  final Uri url = Uri.parse(uri);
                  _launchUrl(url);
                },
            ),
          ],
        ),
      )
    ],
  );
}

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
