import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Scaffold(
  body: GridView__Builder_Run(),
),));

class ItemBox {
  Color color;
  IconData logo;
  String Title,Desc;
  ItemBox({
    @required this.color,
    @required this.logo,
    @required this.Desc,
  });
}

class GridView__Builder_Run extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();
}

class GridViewState extends State<GridView_Builder_Run> {

  List ItemBoxList =[
    ItemBox(
        color: Colors.blueAccent,
        logo: Icons.alarm,
        Desc:"Alarm"
    ),
    ItemBox(
        color: Colors.lightGreen,
        logo: Icons.home,
        Desc:"Home"
    ),
    ItemBox(
        color: Colors.redAccent,
        logo: Icons.star,
        Desc:"Star"
    ),
    ItemBox(
        color: Colors.yellowAccent,
        logo: Icons.info,
        Desc:"Info"
    ),
    ItemBox(
        color: Colors.purpleAccent,
        logo: Icons.style,
        Desc:"Style"
    ),
    ItemBox(
        color: Colors.pinkAccent,
        logo: Icons.close,
        Desc:"Close"
    ),
    ItemBox(
        color: Colors.orangeAccent,
        logo: Icons.help,
        Desc:"Help"
    ),
    ItemBox(
        color: Colors.lightBlueAccent,
        logo: Icons.share,
        Desc:"Share"
    ),
    ItemBox(
        color: Colors.deepOrangeAccent,
        logo: Icons.format_list_bulleted,
        Desc:"List"
    ),
    ItemBox(
        color: Colors.cyanAccent,
        logo: Icons.add,
        Desc:"Add"
    ),
    ItemBox(
        color: Colors.indigoAccent,
        logo: Icons.add_box,
        Desc:"Box"
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Builder',
      home: Scaffold(
        appBar:AppBar(
          title:Text("GridView Builder"),
        ),
        body:Column(
          children: <Widget>[
            Container(
              child: Text("GridView crossAxisCount 3", style: TextStyle(fontSize: 20),),
            ),
            Expanded(
              child:Container(
                  width:MediaQuery.of(context).size.width,
                  child:GridView.builder(
                    itemCount:ItemBoxList.length,
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),

                    itemBuilder: (context,index){
                      return Card(
                          color:ItemBoxList[index].color,
                          child:Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(ItemBoxList[index].logo),
                              Text(ItemBoxList[index].Desc),
                            ],
                          )
                      );
                    },
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}