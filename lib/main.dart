import 'package:fashion_app/DetaySafasi.dart';
import 'package:flutter/material.dart';

import 'MyDesign/my_flutter_app_icons.dart';

void main() => runApp(FashionApp());

class FashionApp extends StatefulWidget {
  @override
  _FashionAppState createState() => _FashionAppState();
}

class _FashionAppState extends State<FashionApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: "Fashion App",
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: tabController, tabs: [
          Tab(icon: Icon(Icons.home, color: Colors.grey.shade500, size: 22,),),
          Tab(icon: Icon(
            Icons.slideshow, color: Colors.grey.shade500, size: 22,),),
          Tab(icon: Icon(
            Icons.language, color: Colors.grey.shade500, size: 22,),),
          Tab(
            icon: Icon(Icons.person, color: Colors.grey.shade500, size: 22,),),
        ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Fashion App",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 24,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.black26,),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[

          //Hikaye akış kısmı
          Container(
            width: double.infinity,
            height: 140,
            child: ListView(
              padding: EdgeInsets.only(left: 10, top: 15),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                StoryLine("assets/model1.jpeg", "assets/chanellogo.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model3.jpeg", "assets/chanellogo.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model1.jpeg", "assets/chanellogo.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model3.jpeg", "assets/chanellogo.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model1.jpeg", "assets/louisvuitton.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model2.jpeg", "assets/chanellogo.jpg"),
                SizedBox(width: 20,),
                StoryLine("assets/model3.jpeg", "assets/chanellogo.jpg"),
                SizedBox(width: 20,),
              ],
            ),
          ),

          //Gönderi Kısmı
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.indigo,
              child: Container(
                height: 476,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    //Profil başlık kısmı
                    Row(
                      children: <Widget>[
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("assets/model3.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Daisy",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("22 Days Ago",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.more_vert, color: Colors.grey, size: 24,),
                      ],
                    ),
                    //İçerik Kısmı
                    SizedBox(height: 10,),
                    Text(
                      "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla"
                          "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla"
                          "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla",
                      style: TextStyle(fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                    SizedBox(height: 10,),
                    //Asıl İçerik
                    Row(
                      children: <Widget>[
                        //Büyük Olan
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) =>
                                    DetaySayfasi(
                                      ImagePath: "assets/modelgrid1.jpeg",)));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width: (MediaQuery
                                  .of(context)
                                  .size
                                  .width - 80) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/modelgrid1.jpeg",),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10,),
                        //Küçükler
                        Column(
                          children: <Widget>[

                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) =>
                                        DetaySayfasi(
                                          ImagePath: "assets/modelgrid2.jpeg",)));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery
                                      .of(context)
                                      .size
                                      .width - 80) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid2.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) =>
                                        DetaySayfasi(
                                          ImagePath: "assets/modelgrid3.jpeg",)));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery
                                      .of(context)
                                      .size
                                      .width - 80) / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    //hashtagler
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.shade100,
                          ),
                          child: Text("# Louis vuitton", style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Colors.brown.shade600,
                              fontWeight: FontWeight.w500
                          ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.shade100,
                          ),
                          child: Text("# Chole", style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 18,
                              color: Colors.brown.shade600,
                              fontWeight: FontWeight.w500
                          ),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 20,),
                    //Footer
                    Divider(height: 10, color: Colors.grey,),
                    SizedBox(height: 20,),
                    //Share Comment like
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        //Expanded(child: Container(child: Icon(const IconData(0xe800, fontFamily: "MyFlutterApp")))),
                        FooterBuilder("1.7K", false, selectedIcon: Icon(
                          CustomShareIcon.share, color: Colors.grey.shade300,)),
                        FooterBuilder("325", false, selectedIcon: Icon(
                          CustomShareIcon.commenting,
                          color: Colors.grey.shade300,)),
                        SizedBox(width: MediaQuery
                            .of(context)
                            .size
                            .width - 268,),
                        FooterBuilder("2.3K", true, selectedIcon: Icon(
                          Icons.favorite, color: Colors.redAccent,)),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }


  Widget StoryLine(String ImagePath, String LogoPath) {
    return Column(
      children: <Widget>[

        Stack(
          children: <Widget>[

            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                image: DecorationImage(
                    image: AssetImage(ImagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(LogoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 6,),

        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 14, color: Colors.white),
            ),
          ),
        ),

      ],
    );
  }

  Widget FooterBuilder(String Metin, bool lastComponent, {Icon selectedIcon}) {
    //Son elemanı yerleştirirken SizedBox koymamak için son olup olmadığının kontrolu yapılıyor
    //lastComponent ile
    //Like Comment Share ve yanlarında ki sayıların her biri burda oluşturuluyor isteğe bağlı olarak
    return Container(
      child: Row(
        children: <Widget>[
          selectedIcon,
          SizedBox(width: 5,),
          Text(
            Metin, style: TextStyle(fontFamily: "Montserrat", fontSize: 15),),
          SizedBox(width: lastComponent == false ? 20 : 0,),

        ],
      ),
    );
  }


}




