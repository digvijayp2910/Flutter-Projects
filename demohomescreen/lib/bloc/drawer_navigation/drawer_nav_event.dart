import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class DrawerNavEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class SetDrawerEvent extends DrawerNavEvent{
  Widget wid;
  SetDrawerEvent({required this.wid});
  @override
  // TODO: implement props
  List<Object?> get props => [wid];

}
