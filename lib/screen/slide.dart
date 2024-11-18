import 'package:flutter/material.dart';

class ScrollWithSlider extends StatefulWidget {
  @override
  _ScrollWithSliderState createState() => _ScrollWithSliderState();
}

class _ScrollWithSliderState extends State<ScrollWithSlider> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollPosition = _scrollController.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scrollable Slider')),
      body: Column(
        children: [
          Slider(
            min: 0,
            max: _scrollController.position.maxScrollExtent,
            value: _scrollPosition,
            onChanged: (value) {
              setState(() {
                _scrollPosition = value;
                _scrollController.jumpTo(value);
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 50,
              itemBuilder: (context, index) => ListTile(
                title: Text('Item $index'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
