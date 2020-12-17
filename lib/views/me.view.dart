import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: Container(
          color: Color(0xffbbbcb7),
          child: Center(
            child: Text(
              "No view for this device size.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 32,
              ),
            ),
          ),
        ),
        tablet: buildCV(),
        desktop: buildCV(),
        watch: Container(
          color: Color(0xffbbbcb7),
          child: Center(
            child: Text(
              "No view for this device size.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCV() {
    return Stack(
      children: [
        Container(
          color: Color(0xffbbbcb7),
          child: Center(
            child: Container(
              width: 595,
              height: 842,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(-10, 10),
                    blurRadius: 32,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Color(0xffdadada),
                        width: 595 / 2.7,
                        height: 842,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://res.cloudinary.com/dlwzb2uh3/image/upload/v1608199177/veda_incks5.png",
                              width: 595 / 2.7,
                              height: 595 / 2.7,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: SelectableText(
                                      "+250 784 190 215",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: InkWell(
                                      onTap: () {
                                        launch(
                                            "mailto:nsengimanavedadom@gmail.com");
                                      },
                                      child: Text(
                                        "nsengimanavedadom@gmail.com",
                                        style: TextStyle(
                                          color: Colors.green[900],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Github",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: InkWell(
                                      onTap: () {
                                        launch("https://github.com/VedaDom");
                                      },
                                      child: Text(
                                        "VedaDom",
                                        style: TextStyle(
                                          color: Colors.green[900],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                "skill Highlights".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            ...[
                              "Flutter and dart",
                              "Java and Kotlin",
                              "Node.js",
                              "Google Cloud",
                              "Azure",
                              "Project management",
                              "Strong decision maker",
                              "Complex problem solver",
                              "Ceative design",
                              "Innovative",
                            ]
                                .map(
                                  (skill) => Padding(
                                    padding: const EdgeInsets.only(
                                        left: 32, bottom: 8),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          skill,
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                "Languages".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            ...[
                              "English",
                              "Kinyarwanda",
                            ]
                                .map(
                                  (skill) => Padding(
                                    padding: const EdgeInsets.only(
                                      left: 32,
                                      bottom: 8,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          skill,
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                left: 16,
                                right: 16,
                                bottom: 32,
                              ),
                              height: 595 / 2.7,
                              color: Color(0xffd9d9d9),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Senior software engineer",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            " with 4 years of experience in application design and development with an innovative concept to the next evolutionary phase. Having a strong communication and leadership.",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                "Experience".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "06/2020",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Software Engineer,"
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              " Soma Technology".toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I built Somafi Mobile app",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          launch(
                                              "https://play.google.com/store/apps/details?id=com.somatechnology.somafri");
                                        },
                                        child: Text(
                                          "Play store",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "11/2019 – 05/2020",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Software Engineer,"
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                        TextSpan(
                                          text: " Andela".toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "During my time in Andela I contributed in development of software projects and it was wonderful.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "07/2017 – 08/2019",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Software Engineer,"
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              " TreeTechies ltd".toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "I worked as mobile software engineer and I helped to build some amazing applications. Here is one of them ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      launch(
                                          "https://play.google.com/store/apps/details?id=com.mssolutions.marche_publique_nationale");
                                    },
                                    child: Text(
                                      "Play store",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.green[900],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                "EDUCATION".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2017",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              "BACHELOR OF BUSINESS AND INFORMATION TECHNOLOGY,"
                                                  .toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                        TextSpan(
                                          text: "  UNIVERSITY OF RWANDA"
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I completed two years of this degree.",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2014",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "A2 DEGREE,".toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                        TextSpan(
                                          text: "   INYANGE SECONDARY SCHOOL"
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: (595 / 2.7) - 40,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 16),
                      color: Colors.black.withOpacity(.7),
                      width: 595,
                      height: 40,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nsengimana Veda Dominique".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          right: 32,
          child: Text(
            "Built with Flutter",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontSize: 32,
            ),
          ),
        ),
      ],
    );
  }
}
