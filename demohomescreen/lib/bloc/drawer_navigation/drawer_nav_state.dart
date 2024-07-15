import 'package:demohomescreen/widgets/home_page.dart';
import 'package:demohomescreen/widgets/test_widget.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DrawerNavState extends Equatable{
  Widget curr ;
  DrawerNavState({this.curr = const Dummy()});
  @override
  // TODO: implement props
  List<Object?> get props => [curr];

  DrawerNavState copyWith({Widget? wid}){
    return DrawerNavState(curr: wid ?? curr);
  }

}


