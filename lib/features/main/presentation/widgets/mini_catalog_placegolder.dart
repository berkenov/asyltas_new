import 'package:asyltas_app/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<Map<String, String>> category = [
  {
    'id': '0000',
    'name': 'Все',
  },
  {
    'id': '0001',
    'name': 'Хрустал 8мм',
  },
  {
    'id': '0002',
    'name': 'Хрустал 6мм',
  },
  {
    'id': '0003',
    'name': 'Хрустал 4мм',
  },
  {
    'id': '0005',
    'name': 'Хрустал 2мм',
  },
  {
    'id': '0007',
    'name': 'Хрустал алмаз 4мм',
  },
  {
    'id': '0017',
    'name': "Стразы капля 6х10",
  },
  {
    'id': '0018',
    'name': "Стразы капля 8х13",
  },
  {
    'id': '0019',
    'name': "Стразы капля 10х14",
  },
];
int selescted = 0;

class MiniCatalogPlacegolder extends StatelessWidget {
  const MiniCatalogPlacegolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 28,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) {
              if (selescted == index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: index == 0 ? 24 : 0, right: index == 7 ? 24 : 12),
                  decoration: BoxDecoration(
                    color: newBlack,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      category[index]['name'].toString(),
                      style: const TextStyle(
                        fontFamily: 'Gilroy',
                        color: newWhite,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                );
              } else {
                return Opacity(
                  opacity: 0.54,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(
                          left: index == 0 ? 24 : 0,
                          right: index == category.length - 1 ? 24 : 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: newBlack,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          category[index]['name'].toString(),
                          style: const TextStyle(
                            fontFamily: 'Gilroy',
                            color: newBlack,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: StaggeredGrid.count(
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            children: category.map((item) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            color: Colors.grey.shade200,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // const Text(
                      //   'Имя товара',
                      //   style: TextStyle(
                      //     fontFamily: 'Gilroy',
                      //     color: newBlack,
                      //     fontSize: 15,
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      //   textAlign: TextAlign.center,
                      //   // overflow: TextOverflow.ellipsis,
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          color: Colors.grey.shade200,
                          height: 18,
                          width: double.infinity,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // const Text(
                      //   "999,00 ₸",
                      //   style: TextStyle(
                      //     fontFamily: 'Gilroy',
                      //     color: newBlack,
                      //     fontSize: 13,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48),
                        child: Container(
                          color: Colors.grey.shade200,
                          height: 16,
                          width: double.infinity,
                        ),
                      ),
                      const SizedBox(height: 4),
                      CupertinoButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: newBlack,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 15,
                                color: Colors.black.withOpacity(0.1),
                              ),
                            ],
                          ),
                          height: 32,
                          width: double.infinity,
                          child: const Center(
                            child: Text(
                              'Подробнее',
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: newWhite,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CupertinoButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: newBlack,
                              width: 1,
                            ),
                          ),
                          height: 32,
                          width: double.infinity,
                          child: const Center(
                            child: Text(
                              'В корзину',
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: newBlack,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
