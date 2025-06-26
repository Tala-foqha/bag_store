// furniture/home/presentation/viewss/widgets/home_view_search.dart

import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewSearch extends StatelessWidget {
  const HomeViewSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(hintText: 'Search',
            prefixIcon: SvgPicture.asset('assets/images/search.svg',
            fit: BoxFit.scaleDown,
            ),
            
            
            ),
          ),
          SizedBox(width: 16,),
          Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
       border: Border.all(
        color: Color(0xffEDEDED)
       ),
        borderRadius: BorderRadius.circular(16),
        color:Color(0xff6C8947)
      ),
      child: SvgPicture.asset('assets/images/filter 01.svg',fit: BoxFit.scaleDown,
      height: 20,
      width: 20,
      ),
              )
      
        ],
      ),
    );
  }
}
