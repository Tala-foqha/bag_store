// furniture/home/presentation/viewss/widgets/bag_with_deatails_item.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
class BagWithDetailsItem extends StatelessWidget {
  const BagWithDetailsItem({
    super.key,
    required this.products,
  });

  final ProductsEntity products;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffF7F7F7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: SizedBox(
              height: 180,
              child: Image.network(
                products.imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 270,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    products.brandName,
                    style: AppStyles.Light14.copyWith(
                      fontSize: 11,
                      color: const Color(0xff7B7B7B),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    products.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.meduim20.copyWith(
                      fontSize: 15,
                      color: const Color(0xff070A03),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '\$${products.price}',
                        style: AppStyles.meduim16.copyWith(
                          fontSize: 14,
                          color: const Color(0xff070A03),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '\$2800.00',
                        style: AppStyles.Light16.copyWith(
                          fontSize: 13,
                          color: const Color(0xffA1A1A1),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: const Color(0xffA1A1A1),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff6C8947),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Buy Now',
                            style: AppStyles.Light16.copyWith(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset('assets/images/arrows.svg'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
