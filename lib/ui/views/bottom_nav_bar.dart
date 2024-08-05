import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/ui/cubit/bottom_nav_cubits/navigation_bloc.dart';
import 'package:myapp/ui/views/home_page.dart';
import 'package:myapp/ui/views/liked.dart';

class MyBottomNavigation extends StatelessWidget {
   MyBottomNavigation({super.key});
   final List<Widget> pages = [
    const HomePage(),
    const LikedPage()
  
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: Scaffold(
      body:   BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return pages[state.selectedIndex];
          },
        ),
        bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
           return BottomNavigationBar(
              items:  [
                const BottomNavigationBarItem(icon: Icon(CupertinoIcons.house_alt , color: Colors.black,), label: 'Home'),
                BottomNavigationBarItem(icon:Image.asset('assets/images/btm_nav/heart.png' , color: Colors.black,), label: 'Liked'),
              ],
              currentIndex: state.selectedIndex,
              onTap: (index) {
                context.read<NavigationBloc>().add(NavigateToPage(index));
              },
              backgroundColor:const Color(0xFFFFFFFF),
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
            );
          },
        ),
      ),
    );
  }
}