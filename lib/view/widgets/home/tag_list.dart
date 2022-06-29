import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/logic/controllers/category_controller.dart';
import 'package:shop_app/view/widgets/category/category_items.dart';

class TagList extends StatelessWidget {

  final controller = Get.find<CategoryController>();
  List<String> countries = [
    " Bilgisayar",
    "Tablet",
    "Cep Telefon",
    "Yazıcılar",
    "Aksesuar",
    "TV,Görüntü",
    " Ses Sistemleri",
    "Foto & Kamera",

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: countries.map((country) {
            return InkWell(
              onTap: (){
                Get.to(() => CategoryItems(
                  catehoryTitle: controller.categoryNameList[0],
                ));
              },
              child: Container(
                  color: Colors.white,
                  height: 60, width: 80,
                  alignment: Alignment.center,
                  child: Text(country)),
            );
          }).toList(),
        )
    );
  }
}