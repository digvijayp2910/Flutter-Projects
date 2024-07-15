import 'package:demohomescreen/bloc/drawer_navigation/drawer_nav_event.dart';
import 'package:demohomescreen/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/drawer_navigation/drawer_nav_bloc.dart';
import '../bloc/drawer_navigation/drawer_nav_state.dart';
import 'custom_stepper_widget.dart';

class Dummy extends StatelessWidget {
  const Dummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                        radiusSize1: 14,
                        radiusSize2: 10,
                        //s>450 ? 30.adaptSize : 20.adaptSize,
                        onPressed: () {},
                      ),
                      SizedBox(height: 19, child: VerticalDivider()),
                      CustomStepWidget(
                        borderColor: 1 == 1 ? Color(0XFFEFEFEF) : Color(
                            0XFFDBDBDB),
                        textColor: 2 == 1 ? Color(0XFF71639E) : Color(
                            0XFFDBDBDB),
                        radiusSize1: 14,
                        radiusSize2: 11,
                        onPressed: () {},
                      ),
                    ],
                  );
                },
              ),
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
                        child: Text("Home"),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: () {
                          context
                              .read<DrawerNavBloc>()
                              .add(SetDrawerEvent(wid: Dummy()));
                        },
                        child: Text("Steper"),
                      )
                    ],
                  );
                },
              )
            ],
          )),
    );
  }
}
