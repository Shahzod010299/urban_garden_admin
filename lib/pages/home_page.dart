import 'package:flutter/material.dart';
import 'package:urban_garden_admin/models/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('/Users/shahzod/urban_garden_admin/assets/urban.png'),
        title: Text('Shahzod Toshboyev'),
        actions: [
          Icon(Icons.menu),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Admin uchun',style: TextStyle(fontWeight: FontWeight.w700),),
                  SizedBox(height: 12,),
                  Container(
                    height: 400,
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: getAllData().length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.greenAccent.withOpacity(0.8),Colors.greenAccent,Colors.green,Colors.green,],
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(getAllData()[index].imageUrl,height: 60,width: 60,),
                                Text(getAllData()[index].title,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),)
                              ],
                            ),
                          );
                        }),
                  ),
                  Text('Yerlar',style: TextStyle(fontWeight: FontWeight.w700),),
                  SizedBox(height: 12,),
                  Container(
                    height: 400,
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: getYerlarData().length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.yellow.withOpacity(0.8),Colors.greenAccent,Colors.green,Colors.teal,],
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(getYerlarData()[index].imageUrl,height: 60,width: 60,),
                                Text(getYerlarData()[index].title,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
