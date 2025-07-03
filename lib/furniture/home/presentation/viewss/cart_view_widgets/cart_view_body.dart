// furniture/home/presentation/viewss/cart_view_widgets/cart_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_button.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:bag_store_ecommerec/furniture/check_out/check_out_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/cart_item_list_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/discount_widget.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/ground_total_widget.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/item_total_widget.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/my_cart_nav_bar.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/manger/cart/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          SizedBox(height: 8,),
          MyCartNavBar(),
          SizedBox(height: 16,),
          CartItemListView(cartItems: context.read<CartCubit>().cartEntity.cartItems,),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter Promo Code',
                style: AppStyles.Light14.copyWith(
                  color: Color(0xffA1A1A1)
                ), 
                
                ),
             
            SizedBox(height: 4,),
            CustomTextField(hintText: '',suffixIcon: SvgPicture.asset('assets/images/check-circle.svg',
            fit: BoxFit.scaleDown,

            ),),
            SizedBox(height: 16,),
            ItemTotalWidget(),
            SizedBox(height: 12,),
            DiscountWidget(),
            SizedBox(height: 16,),
            Divider(
              color: Color(0xffDFDFDF),
              thickness: 1,
            ),
            SizedBox(height: 16,),
            GroundTotalWidget()

             ],
            ),
          ),
          SizedBox(height: 8,),
          Divider(
              color: Color(0xffDFDFDF),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(text: 'Proceed to Checkout', onPressed: 
              (){
                Navigator.pushNamed(context, CheckOutView.routeName);

              }),
            ),
            SizedBox(height: 10,)

        ],
      ),
    ) ;
  }
}
