import 'package:flutter/material.dart';
import 'package:ieee_ecommerce/data/model/product_model.dart';
import 'package:ieee_ecommerce/presentaion/home_screen/widget/category_item.dart';
import 'package:ieee_ecommerce/presentaion/home_screen/widget/product_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //ToDo fake data " this data come from apis "
  List<String> categoires = [
    'Health',
    'Sport',
    'Education',
    'Sport',
    'Health',
    'Sport',
    'Education',
    'Sport',
    'Education',
    'Fashion',
    'Electronis'
  ];

  //ToDo fake data " this data come from apis "
  List<ProductModel> productList = [
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.imgur.com/ZANVnHE.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            'Categories',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categoires.length,
              itemBuilder: (context, index) =>
                  CategoryItem(text: categoires[index]),
              separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: productList.length,
              itemBuilder: (context, index) => ProductItem(
                  image: productList[index].image,
                  name: productList[index].name,
                  price: productList[index].price),
            ),
          ),
        ],
      ),
    );
  }
}
