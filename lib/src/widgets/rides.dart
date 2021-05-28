import 'package:Easy_pay/src/models/ride.dart';
import 'package:flutter/material.dart';

import '../common.dart';
import 'custom_text.dart';

List<Ride> ridesList = [
  Ride(
      name: "Best Ride",
      image: "bus.png",
      rating: 4.7,
      hot: "Hot Fare",
      vendor: "Good Fare",
      wishlist: true),
  Ride(
      name: "Better Ride",
      image: "bus.png",
      rating: 4.5,
      hot: "Hot Fare",
      vendor: "Good Fare",
      wishlist: true),
  Ride(
      name: "Good Ride",
      image: "bus.png",
      rating: 4.4,
      hot: "Hot Fare",
      vendor: "Good Fare",
      wishlist: false),
  Ride(
      name: "Not Bad Ride",
      image: "bus.png",
      rating: 4.2,
      hot: "Hot Fare",
      vendor: "Good Fare",
      wishlist: false)
];

class Rides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ridesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 200,
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                    color: grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 4,
                  ),
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/${ridesList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: ridesList[index].name),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: red[50],
                                      offset: Offset(15, 5),
                                      blurRadius: 30,
                                    ),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ridesList[index].wishlist
                                    ? Icon(
                                        Icons.favorite,
                                        color: red,
                                        size: 18,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        color: red,
                                        size: 18,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CustomText(
                                  text: ridesList[index].rating.toString(),
                                  size: 12,
                                  color: grey,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 12,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                                size: 12,
                              ),
                            ],
                          ),
                          CustomText(
                            text: ridesList[index].hot,
                            weight: FontWeight.bold,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
