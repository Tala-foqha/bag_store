// furniture/check_out/presentation/views/widgets/shipping_section.dart
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/shipping_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>with AutomaticKeepAliveClientMixin {
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
     
      children: [
         SizedBox(height: 24,),
        ShippingItem(title: 'Cash on delivery',
        onTap:(){ 
          selectedIndex=0;
          setState(() {
       context.read<OrderInputEntity>().payWithCash=true;

          });
        },
        
         price: (context.
         read<OrderInputEntity>()
         .cartEntity.
         calculateTotalPrice()
       +40).toString(),
          subTitle: 'Deliver from the place', isSelected:selectedIndex==0 ,),
          SizedBox(height: 8,),
           ShippingItem(
            
            onTap: () {
              selectedIndex=1;
              setState(() {
                context.read<OrderInputEntity>().payWithCash=false;
                
              });
            },
            title: 'Buy now, pay later',
         price: context.
         read<OrderInputEntity>()
         .cartEntity.
         calculateTotalPrice().
         toString(),
          subTitle: 'Please choose the payment method', isSelected: selectedIndex==1,),


      ]
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}
