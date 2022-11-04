import 'package:airplane_apps/cubit/page_cubit.dart';
import 'package:airplane_apps/ui/pages/home_page.dart';
import 'package:airplane_apps/ui/pages/settings_page.dart';
import 'package:airplane_apps/ui/pages/transaction_page.dart';
import 'package:airplane_apps/ui/pages/wallet_page.dart';
import 'package:airplane_apps/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingsPage();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_home.png',
                index: 0,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_booking.png',
                index: 1,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_card.png',
                index: 2,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_settings.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
