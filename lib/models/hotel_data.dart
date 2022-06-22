
import 'package:flutter/foundation.dart';
import 'package:hotel_design_app/models/hotel.dart';

class HotelData with ChangeNotifier {
  final List<Hotel> _hotels = [
    Hotel(
        id: 'h1',
        title: 'LaVista Hotel',
        imageUrl: 'imageUrl',
        description: 'this beachfront myrtle. Beach hotel',
        price: 250.00,
        distance: 2,
        likes: 0,
    ),
    Hotel(
        id: 'h2',
        title: 'Miami St Hotel',
        imageUrl: 'imageUrl',
        description: 'this beachfront myrtle. Beach hotel',
        price: 250.00,
        distance: 2,
        likes: 0,
    ),
    Hotel(
        id: 'h3',
        title: 'Rk Mega Hotel',
        imageUrl: 'imageUrl',
        description: 'this beachfront myrtle. Beach hotel',
        price: 250.00,
        distance: 2,
        likes: 0,
    ),
  ];

  List<Hotel> get hotels => [..._hotels];

}