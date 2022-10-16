import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/controller/home_view_model.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/screens/cart_screen.dart';
import 'package:shop_app/view/screens/categories_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});
  

  Widget bottomNavigationBar() {
    return BottomAppBar(
            notchMargin: 6.0,
            shape: CircularNotchedRectangle(),
            child: 
            GetBuilder<HomeViewModel>(
              init: HomeViewModel(),
              builder: (controller) {
                return BottomNavigationBar(
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.grey.shade400,
                selectedLabelStyle: TextStyle(color: Colors.red),
                unselectedLabelStyle: TextStyle(color: Colors.grey.shade500), 
                  items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.storefront_sharp),
                    label: 'Category',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none_rounded),
                    label: 'News',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline_rounded),
                    label: 'Favorites',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: 'cart',
                  ),
                ],
                currentIndex: controller.navigatorValue,
                onTap: (index) {
                  controller.changeSelectedValue(index);
                  
                },);
              }
              
            )
           
          );
        }

  Widget floatingActionButton (){
    return FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: () {},
      child: Stack(
        children: [
          Icon(Icons.add_shopping_cart)
        ],
      ),
      
      );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) {
        return Scaffold(
          body: controller.currentScreen,
          bottomNavigationBar: bottomNavigationBar(),
          floatingActionButton: floatingActionButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
      }
    );
  }
  }
