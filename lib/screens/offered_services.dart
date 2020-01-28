import 'package:flutter/material.dart';

class MyServiceHome extends StatelessWidget {
  List<Map<String, dynamic>> builder = [
    {
      'title' : 'Towing Service',
      'image' : 'assets/images/towing.png',
      'callback' : '/productlist'
    },
    {
      'title' : 'Spare Part Sales',
      'image' : 'assets/images/sparepart.png',
      'callback' : '/productlist'
    },
    {
      'title' : 'Maintence',
      'image' : 'assets/images/mainten.png',
      'callback' : '/productlist'
    },
    {
      'title' : 'License Renewal',
      'image' : 'assets/images/mainten.png',
      'callback' : '/productlist',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        margin: EdgeInsets.only(top: 30.0),
        child: GridView.builder(
          shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: builder.length,
            itemBuilder: (BuildContext context, int index){
              final currentitem = builder[index];
              return  GestureDetector(
                onTap: (){
                    Navigator.pushNamed(context, currentitem['callback'].toString());
                },
                child: Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(currentitem['image']),
                          Text(currentitem['title']),
                        ],
                    ),

                ),
              );
            },
        ),
      ),
    );
  }
}
