import 'package:flutter/material.dart';
import 'package:hotel_design_app/constants.dart';
import 'package:hotel_design_app/models/hotel_data.dart';
import 'package:provider/provider.dart';

class FirstContentScreen extends StatelessWidget {
  const FirstContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final loadedHotelData = Provider.of<HotelData>(context).hotels;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: NetworkImage(imageProfile),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Available room', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: Colors.green),),
            ),
            Container(
              height: 360,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 80,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child:  Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('PRICE THERE'),
                                  ),),
                            ),
                          ),
                          Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: const DecorationImage(
                                  image: NetworkImage(hotelBeach),
                                  fit: BoxFit.cover,
                              ),
                            ),
                          ),
                            Positioned(
                              top: 30,
                              right: 30,
                              child: Text('Room - 206', style: TextStyle(color: Colors.white),),
                            ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Photos', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500,  color: Colors.green),),
                  Text('Room - 206', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic,  color: Colors.green),),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: NetworkImage(hotelBeach),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
