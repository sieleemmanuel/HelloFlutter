import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: MyCard(),
  ));
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
          title: const Text("Profile"),
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 0.0,
          // Android support
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.green,
              statusBarIconBrightness: Brightness.light,
              //IOS Support
              statusBarBrightness: Brightness.light
          ),

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: const <Widget>[
                  SizedBox(height: 30.0),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/avatar.jpeg"),
                    radius: 60.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "John Doe",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  SizedBox(height: 5.0),
                  Text("john.doe@gmail.com"),
                  SizedBox(height: 5.0),
                  Text("Mobile Developer")
                ],
              ),
            ),
            const Divider(
              height: 40.0,
            ),
            Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.lightGreen[90],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                        Icons.location_on
                    ),
                    const SizedBox(width: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Country",
                          style:
                          TextStyle(color: Colors.black, letterSpacing: 1.0),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          "USA",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.lightGreen[90],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                        Icons.format_list_bulleted
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Projects",
                              style:
                              TextStyle(color: Colors.black, letterSpacing: 1.0),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "14",
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0),
                            ),
                          ],
                        ),


                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.lightGreen[90],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                        Icons.leaderboard
                    ),
                    const SizedBox(width: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Level",
                              style:
                              TextStyle(color: Colors.black, letterSpacing: 1.0),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              "$level",
                              style: const TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30.0),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            level+=1;
                          });
                        },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.lightGreen[600])
                            ),
                            child: const Icon(
                                Icons.add
                            )),
                        const SizedBox(width: 10.0),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            if(level==0){
                              var snackBar = const SnackBar(content: Text("Level cannot be less than 0"));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            }else{
                              level-=1;
                            }

                          });
                        },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.lightGreen[600])
                            ),
                            child: const Icon(
                                Icons.remove
                            ))
                      ],
                    )

                  ],
                ),
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
