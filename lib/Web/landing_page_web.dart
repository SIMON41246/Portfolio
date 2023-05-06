import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LaundingPageWeb extends StatefulWidget {
  const LaundingPageWeb({Key? key}) : super(key: key);

  @override
  State<LaundingPageWeb> createState() => _LaindingPageWebState();
}

class _LaindingPageWebState extends State<LaundingPageWeb> {
  urllauncher(String imagePath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imagePath,
        color: Colors.black,
        width: 35.0,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var widthdevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 72,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/circular.png"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold("Mohamed Ezriouil", 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urllauncher("assets/instagram.svg",
                    "https://www.instagram.com/ezmoh_amed/"),
                urllauncher(
                    "assets/github.svg", "https://github.com/SIMON41246"),
                urllauncher(
                    "assets/twitter.svg", "https://twitter.com/?lang=en"),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(children: [
          Spacer(
            flex: 3,
          ),
          TabWeb("Home"),
          Spacer(),
          TabWeb("Works"),
          Spacer(),
          TabWeb("Blog"),
          Spacer(),
          TabWeb("About"),
          Spacer(),
          TabWeb("Contact"),
          Spacer(),
        ]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(size: 23.0, color: Colors.black),
      ),
      body: ListView(children: [
        Container(
          height: height - 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: SansBold("Hello I'm", 15)),
                  SizedBox(
                    height: 16,
                  ),
                  SansBold("MOHAMED EZRIOUIL", 45),
                  Sans(" Android Developer", 34),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 20,
                      ),
                      Sans("mohammedezrouil@gmail.com", 15)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(
                        width: 20,
                      ),
                      Sans("+212 716058783", 15)
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(
                        width: 20,
                      ),
                      Sans("HAY RACHAD G10 N10409 Tiflet", 15)
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
              CircleAvatar(
                radius: 147.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 143.0,
                  child: CircleAvatar(
                    radius: 140,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/circular.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        //Second Page
        Container(
          height: widthdevice / 1.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/webL.png",
                height: 300,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About Me", 40.0),
                  SizedBox(
                    height: 10,
                  ),
                  Sans(
                      "I’am  a highly motivated junior Android developer with a passion for creating high-",
                      15),
                  SizedBox(
                    height: 10,
                  ),
                  Sans(
                      " quality mobile applications that provide exceptional user experiences. I have  ",
                      15),
                  SizedBox(
                    height: 10,
                  ),
                  Sans("experience in developing Android applications using Kotlin programming", 15),
                  SizedBox(height: 10),
                  Sans(
                      "language and  familiar with the Android Studio development environment also ",
                      15),
                  SizedBox(
                    height: 10,
                  ),
                  Sans(
                      "having experience working with the big titles in android programming like:.",
                      15),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Room Database", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Sqlite", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Firebase", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Flutter", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Kotlin", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("MVVM", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("MVP", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Retrofit", 15),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
        //Third Page
        Container(
          height: height - 56,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold("What I do", 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCards(
                    imagepath: "assets/webL.png",
                    text: "Web Development",
                    fit: BoxFit.contain,
                  ),
                  AnimatedCards(
                    imagepath: "assets/app.png",
                    text: "App Development",
                    reverse: true,
                  ),
                  AnimatedCards(
                    imagepath: "assets/firebase.png",
                    text: "Back - end Development",
                  ),
                ],
              )
            ],
          ),
        ),
        //fourth Page
        Container(
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact Me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                            heading: "First Name",
                            width: 350,
                            hintText: "Enter your First name ",
                            maxLines: 1),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          heading: "Email",
                          width: 350,
                          hintText: "Enter your Email",
                          maxLines: 1,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            heading: "Second Name",
                            width: 350,
                            hintText: "Enter your Second Name"),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                            heading: "Phone",
                            width: 350,
                            hintText: "Enter your Phone Number")
                      ],
                    )
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthdevice / 1.5,
                  hintText: "Enter a Message",
                  maxLines: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200,
                  child: SansBold("Submit", 20.0),
                  color: Colors.teal,
                ),
              ],
            )),
        SizedBox(
          height: 20.0,
        )
      ]),
    );
  }
}
