// furniture/check_out/presentation/views/widgets/shipping_section.dart
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/shipping_item.dart';
import 'package:flutter/material.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
         SizedBox(height: 24,),
        ShippingItem(title: 'Cash on delivery',
        onTap:(){ 
          selectedIndex=0;
          setState(() {
            
          });
        },
        
         price: '40',
          subTitle: 'Deliver from the place', isSelected:selectedIndex==0 ,),
          SizedBox(height: 8,),
           ShippingItem(
            
            onTap: () {
              selectedIndex=1;
              setState(() {
                
              });
            },
            title: 'Buy now, pay later',
         price: 'Free',
          subTitle: 'Please choose the payment method', isSelected: selectedIndex==1,),


      ]
    );
  }
}
