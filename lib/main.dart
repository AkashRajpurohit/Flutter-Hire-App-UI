import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 30.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.grey
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.40),
                color: Colors.white,
                height: 100.0,
                child: Text(
                  "Get coaching",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1.0,
                      color: Colors.grey.withOpacity(0.5)
                    )
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(20.0, 25.0, 5.0, 5.0),
                          child: Text(
                            "YOU HAVE",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20.0, 40.0, 5.0, 15.0),
                          child: Text(
                            "206",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(100.0, 58.0, 5.0, 5.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 25.0,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Buy more",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green
                            ),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text(
                    "MY COACHES",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0
                    )
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "VIEW PAST SESSIONS",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0
                    )
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            primary: false,
            children: <Widget>[
              _buildCard(name: "Jake Peralta", status: "Available", cardIndex: 1, image: "https://s3.amazonaws.com/uifaces/faces/twitter/mgonto/128.jpg"),
              _buildCard(name: "Raymond Holt", status: "Away", cardIndex: 2, image: "https://s3.amazonaws.com/uifaces/faces/twitter/id835559/128.jpg"),
              _buildCard(name: "Rosa Diaz", status: "Away", cardIndex: 3, image: "https://s3.amazonaws.com/uifaces/faces/twitter/imsoper/128.jpg"),
              _buildCard(name: "Charles", status: "Available for Jake", cardIndex: 4, image: "https://s3.amazonaws.com/uifaces/faces/twitter/olaolusoga/128.jpg"),
              _buildCard(name: "Amy Santiago", status: "Away", cardIndex: 5, image: "https://s3.amazonaws.com/uifaces/faces/twitter/abotap/128.jpg"),
              _buildCard(name: "Gina Leneti", status: "You bet", cardIndex: 6, image: "https://s3.amazonaws.com/uifaces/faces/twitter/dahparra/128.jpg"),
              _buildCard(name: "Hitchcock", status: "Always Available", cardIndex: 7, image: "https://s3.amazonaws.com/uifaces/faces/twitter/blakehawksworth/128.jpg"),
              _buildCard(name: "Terry", status: "Away", cardIndex: 8, image: "https://s3.amazonaws.com/uifaces/faces/twitter/victordeanda/128.jpg"),
            ],
          ),
          SizedBox(height: 25.0),
          // PS: If you are removing the credits section then kindly give a star on github at https://github.com/AkashRajpurohit/Flutter-Hire-App-UI
          Center(
            child: Text(
              "@AkashRajpurohit",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 25.0)
        ],
      ),
    );
  }

  Widget _buildCard({ String name, String status, String image, int cardIndex }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      margin: cardIndex.isEven ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0) : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(image)
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 42.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == "Away" ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0
                  )
                ),
              )
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black
            )
          ),
          SizedBox(height: 8.0),
          Text(
            status,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.grey
            )
          ),
          SizedBox(height: 11.0),
          Expanded(
            child: Container(
              width: 175.0,
              decoration: BoxDecoration(
                color: status == "Away" ? Colors.grey[400] : Colors.green[600],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                )
              ),
              child: Center(
                child: Text(
                  "Request",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}