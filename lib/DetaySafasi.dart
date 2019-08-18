import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class DetaySayfasi extends StatefulWidget {

  var ImagePath;

  DetaySayfasi({this.ImagePath});

  @override
  _DetaySayfasiState createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.ImagePath,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.ImagePath), fit: BoxFit.cover),
              ),
            ),
          ),

          Positioned(
            right: 18,
            left: 18,
            bottom: 15,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 220,
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 36,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, bottom: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade400),
                              image: DecorationImage(
                                  image: AssetImage("assets/dress.jpg"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "LAMINATED",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Louis vuitton",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        color: Colors.grey
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 8,
                                    child: Image.asset(
                                      "assets/louisvuitton.jpg",
                                      fit: BoxFit.fill,),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              SizedBox(
                                height: 30,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 200,
                                //color: Colors.red,
                                child: AutoSizeText(
                                  "One button V-neck sling long-sleeved waist female stitching dress",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Montserrat",
                                    color: Colors.grey,
                                  ),
                                  maxLines: 3,
                                  minFontSize: 13,
                                  overflow: TextOverflow.clip,
                                  //overflowReplacement: Text('Sorry String too long'),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),

                    Divider(),

                    Padding(
                      padding:
                      const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$6500',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 22),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.brown,
                              maxRadius: 20,
                              child: Icon(
                                Icons.arrow_forward_ios, color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
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
}
