import 'package:flutter/material.dart';


class UsosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: size.width*90/100,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.deepPurple,
                      child: Column(
                        children: [
                          Icon(Icons.monetization_on),
                          Text("slkdjflasd"),
                          Text("slkdjflasd"),
                          Text("slkdjflasd"),
                          Text("slkdjflasd"),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 30.0,
                                spreadRadius: 5.0,
                                offset: Offset(
                                    5.0,
                                    4.0
                                )
                            )
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.ac_unit),
                          Text("otra cosa ?"),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Icon(Icons.airline_seat_legroom_extra),
                          Text("otra "),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.monetization_on),
                    Text("slkdjflasd"),
                  ],
                ),
              ),
              Text("Otra cosa..."),
              Text("una Mas..."),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.monetization_on),
                    Icon(Icons.zoom_in),
                    Icon(Icons.list),
                    Icon(Icons.add_circle),
                    Icon(Icons.ac_unit),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width*10/100,
          color: Colors.cyan,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
              Icon(Icons.add),
            ],
          ),
        )
      ],
    );
  }
}
