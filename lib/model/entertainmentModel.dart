import 'package:flutter/material.dart';
 
  class Album {
  final int userId;
  final int id;
  final String title;
  final String image;

  Album({
    required this.userId,
    required this.id,
    required this.title,
    required this.image,
  });
  }

  List<Album> entertainments = [
    Album(
      id: 1, title: 'Collect the ticket for club', userId: 1,image: 'android/assests/images/entertainment0.png',
      
    ),
     Album(
      id: 2, title: 'sunt qui excepturi placeat culpa', userId: 1,image: 'android/assests/images/entertainment2.jpg',
      
    ),
     Album(
      id:3, title: 'omnis laborum odio', userId: 1,image: 'android/assests/images/entertainment3.jpg',
      
    )
  ];




//   {
//     "userId": 1,
//     "id": 1,
//     "title": "quidem molestiae enim"
//   },
//   {
//     "userId": 1,
//     "id": 2,
//     "title": "sunt qui excepturi placeat culpa"
//   },
//   {
//     "userId": 1,
//     "id": 3,
//     "title": "omnis laborum odio"
//   },
  
// ]