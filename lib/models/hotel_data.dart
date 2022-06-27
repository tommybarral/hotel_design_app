
import 'package:flutter/foundation.dart';
import 'package:hotel_design_app/constants.dart';
import 'package:hotel_design_app/models/hotel.dart';

class HotelData with ChangeNotifier {
  final List<Hotel> _hotels = [
    Hotel(
        id: 'h1',
        title: 'LaVista Hotel',
        imageUrl: lavistaHotel,
        description: 'this beachfront myrtle. Beach hotel',
        price: 450.00,
        distance: 2,
        likes: 0,
    ),
    Hotel(
        id: 'h2',
        title: 'Miami St Hotel',
        imageUrl: miamiHotel,
        description: 'this beachfront myrtle. Beach hotel',
        price: 250.00,
        distance: 2,
        likes: 0,
    ),
    Hotel(
        id: 'h3',
        title: 'Rk Mega Hotel',
        imageUrl: megaHotel,
        description: 'this beachfront myrtle. Beach hotel',
        price: 650.00,
        distance: 2,
        likes: 0,
    ),
  ];

  List<Hotel> get hotels => [..._hotels];

}