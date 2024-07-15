import 'package:demohomescreen/bloc/drawer_navigation/drawer_nav_event.dart';
import 'package:demohomescreen/widgets/home_page.dart';
import 'package:demohomescreen/widgets/test_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/drawer_navigation/drawer_nav_bloc.dart';
import '../bloc/drawer_navigation/drawer_nav_state.dart';
import 'custom_stepper_widget.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<DrawerNavBloc, DrawerNavState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      CustomStepWidget(
                        borderColor: Color(0XFFEFEFEF),
                        textColor: Color(0XFF090A0A),
                        isChecked: 1 == 1 ? true : false,
                        radiusSize1: 4,
                        radiusSize2: 3,
                        //s>450 ? 30.adaptSize : 20.adaptSize,
                        onPressed: () {},
                      ),
                      SizedBox(height: 15, child: VerticalDivider()),
                      CustomStepWidget(
                        isChecked: 2 == 1 ? true : false,
                        borderColor: 1 == 1 ? Color(0XFFEFEFEF) : Color(
                            0XFFDBDBDB),
                        textColor: 2 == 1 ? Color(0XFF71639E) : Color(
                            0XFFDBDBDB),
                        radiusSize1: 4,
                        radiusSize2: 3,
                        onPressed: () {},
                      ),
                    ],
                  );
                },
              ),
              SizedBox(width: 8,),
              BlocBuilder<DrawerNavBloc, DrawerNavState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          context
                              .read<DrawerNavBloc>()
                              .add(SetDrawerEvent(wid: HomePage()));
                        },
                        child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 10),),
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: () {
                          context
                              .read<DrawerNavBloc>()
                              .add(SetDrawerEvent(wid: Dummy()));
                        },
                        child: Text("Steper", style: TextStyle(color: Colors.white,fontSize: 10)),
                      )
                    ],
                  );
                },
              )
            ],
          ));
  }
}
