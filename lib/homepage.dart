import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _height = 500;
  double _width = 500;
  Color _color = Colors.yellow;
  double _margin = 0;
  double _opacity = 1;
  double _margin2 = 80;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeIn,
      height: _height,
      width: _width,
      color: _color,
      margin: EdgeInsets.all(_margin),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _height = 300;
              });
            },
            onLongPress: () {
              setState(() {
                _height = 500;
              });
            },
            child: const Text(
              'animate height',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _width = 200;
              });
            },
            onLongPress: () {
              setState(() {
                _width = 500;
              });
            },
            child: const Text(
              'animate width',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _color = Colors.green;
              });
            },
            onLongPress: () {
              setState(() {
                _color = Colors.yellow;
              });
            },
            child: const Text(
              'animate color',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _margin = 20;
              });
            },
            onLongPress: () {
              setState(() {
                _margin = 0;
              });
            },
            child: const Text(
              'animate margin',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity = 0;
              });
            },
            onLongPress: () {
              setState(() {
                _opacity = 1;
              });
            },
            child: const Text(
              'animate opacity',
            ),
          ),
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 2),
            child: const Icon(
              Icons.car_crash,
              size: 80,
              color: Colors.red,
            ),
          ),
          AnimatedContainer(
            margin: EdgeInsets.symmetric(horizontal: _margin2),
            duration: const Duration(seconds: 2),
            child: TextFormField(
              onTap: () {
                setState(() {
                  _margin2 = 30;
                });
              },
              decoration: InputDecoration(
                hintText: "SEARCH",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
