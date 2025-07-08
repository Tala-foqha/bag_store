// furniture/home/presentation/viewss/profile_view_widgets/list_item_profile.dart


import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ListItemProfile extends StatelessWidget {
  const ListItemProfile({
    super.key,  this.child, required this.text, required this.image, this.color,  this.colorText,
  });
  final Widget? child;
  final String text;
  final String image;
  final Color ?color;
    final Color ?colorText;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:color?? Color(0xffF7F7F7),
          ),
          child: SvgPicture.asset(image,fit: BoxFit.scaleDown,),
        ),
        SizedBox(width: 12,),
        Text(text,
        style: AppStyles.Light16.copyWith(
          color:colorText?? Color(0xff070A03)
        ),
        ),
        Spacer(),
        child??SizedBox(),
      ],
    );
  }
}
