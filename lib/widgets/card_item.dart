import 'package:flutter/material.dart';
import 'package:wkpk_shop/screens/snack_screen.dart';

class CardItem extends StatelessWidget {
  final String name;
  final double rank;
  final bool isFavorite;
  final String img;
  final Function onPressed;
  const CardItem(
      {required this.name,
      required this.rank,
      required this.isFavorite,
      required this.img,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, SnackScreen.rn),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
            elevation: 10,
            color: ThemeData().cardColor,
            child: Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      img,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  bottom: 5,
                  left: 5,
                  right: 5,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(3, 3))
                        ],
                        color: ThemeData().dialogBackgroundColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: Colors.red)),
                        Text(name,
                            style: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w700,
                                fontSize: 16)),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shop, color: Colors.red)),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
