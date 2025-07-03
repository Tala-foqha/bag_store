// furniture/home/presentation/viewss/cart_view_widgets/cart_item.dart

import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/incrase_abd_deacrese_widgets.dart';
import 'package:flutter/material.dart';

class CartIteem extends StatefulWidget {
  const CartIteem({
    super.key, required this.cartItemEntity,
  });
final CartItemEntity cartItemEntity;

  @override
  State<CartIteem> createState() => _CartIteemState();
}

class _CartIteemState extends State<CartIteem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            height: 112,
            width: 112,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffF7F7F7)
            ),
            child: Image.network(widget.cartItemEntity.productsEntity.imageUrl),
            
          ),
          SizedBox(width: 12,),
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 219,
                height: 48,
                child: Text(widget.cartItemEntity.productsEntity.description,
                style: AppStyles.meduim16.copyWith(
                  color: Color(0xff070A03)
                ),
                ),
              ),
              SizedBox(height: 4,),
              Text('\$${widget.cartItemEntity.productsEntity.price}',
              style: AppStyles.Light14.copyWith(
                color: Color(0xff070A03)
              ),
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  IncreaseAndDeacreasWidgets(
                    onTap: () {
                      widget.cartItemEntity.deacreseCount();
                      setState(() {
                        
                      });
                    },
                    colorBackGround: Colors.white,
                    color: Color(0xffEDEDED),
                   icon: Icons.remove,
                    iconColor: Colors.black,
                     cartItems: widget.cartItemEntity,
                      
                  ),
                  SizedBox(width: 12,),
                  Text(widget.cartItemEntity.count.toString(),
                  style: AppStyles.Light16.copyWith(
                    color: Color(0xff070A03)
                  ),
                  ),
                  SizedBox(width: 12,),
    
                  IncreaseAndDeacreasWidgets(
                    onTap: () {
                      widget.cartItemEntity.increaseCount();
                      setState(() {
                        
                      });
                    },
                    colorBackGround:AppColors.primaryColor,
                   icon: Icons.add,
                    iconColor: Colors.white, cartItems: widget.cartItemEntity,
    
                  ),
    
    
                ],
              )
    
            ],
          )
        ],
      ),
    );
  }
}
