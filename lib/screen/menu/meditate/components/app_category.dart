import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppCategory extends StatefulWidget {
  const AppCategory({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppCategoryState createState() => _AppCategoryState();
}

class _AppCategoryState extends State<AppCategory> {
  // Menyimpan status apakah hari tertentu dipilih atau tidak
  final List<Map<String, dynamic>> category = [
    {"name": "All", "icon": 'all'},
    {"name": "My", "icon": 'love'},
    {"name": "Anxious", "icon": 'anxious'},
    {"name": "Sleep", "icon": 'sleep2'},
    {"name": "Kids", "icon": 'kids'},
  ];
  int selectedcategory = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          EdgeInsets margin = EdgeInsets.only(
            left: index == 0 ? 20 : 8,
            right: index == 9 ? 20 : 8,
          );

          return Container(
            margin: margin,
            child: GestureDetector(
              onTap: () => {
                setState(() {
                  selectedcategory = index;
                })
              },
              child: Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 18.0),
                    decoration: BoxDecoration(
                      color: selectedcategory == index
                          ? Theme.of(context).primaryColor
                          : const Color(0xFFA0A3B1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/icons/${category[index]['icon']}.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    category[index]['name'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11,
                      color: selectedcategory == index
                          ? Theme.of(context).textTheme.headlineLarge?.color
                          : Colors.grey,
                      // fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      //         ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: List.generate(category.length, (index) {

      //   }),
      // ),
    );
  }
}
