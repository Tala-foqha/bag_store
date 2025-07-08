// furniture/home/presentation/viewss/profile_view_widgets/list_item_profile.dart


import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ListItemProfile extends StatelessWidget {
  const ListItemProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffF7F7F7),
          ),
          child: SvgPicture.asset('assets/images/notepad.svg',fit: BoxFit.scaleDown,),
        ),
        SizedBox(width: 12,),
        Text('My Orders',
        style: AppStyles.Light16.copyWith(
          color: Color(0xff070A03)
        ),
        ),
        Spacer(),
        SvgPicture.asset('assets/images/Vector 175.svg')
      ],
    );
  }
}
