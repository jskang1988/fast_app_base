import 'package:melchi_and_pet/common/common.dart';
import 'package:melchi_and_pet/screen/main/tab/home/f_home.dart';
import 'package:flutter/material.dart';
import 'package:melchi_and_pet/screen/main/tab/profile/f_profile.dart';
import 'package:melchi_and_pet/screen/main/tab/search/f_search.dart';
import 'basket/f_basket.dart';
import 'order_history/f_order_history.dart';

enum TabItem {
  orderHistory(Icons.home, '주문내역', OrderHistoryFragment()),
  basket(Icons.star, '장바구니', BasketFragment()),
  home(Icons.payment, '홈', HomeFragment()),
  search(Icons.candlestick_chart, '검색', SearchFragment()),
  profile(Icons.menu, '프로필', ProfileFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
