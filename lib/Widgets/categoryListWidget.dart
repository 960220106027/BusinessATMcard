import 'package:businesscard/Widgets/Lists.dart';
import 'package:businesscard/Widgets/assetsImages.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  final categoryIcons;
  final String categoryNames;
  const CategoryListWidget({super.key,required this.categoryIcons,required this.categoryNames});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Padding(
                         padding: EdgeInsets.only(
                  left: size.width * 0.03, right: size.width * 0.03),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 35,
                                child: Icon(
                                  widget.categoryIcons,color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Text(widget.categoryNames),
                            ],
                          ),
                        );
  }
}