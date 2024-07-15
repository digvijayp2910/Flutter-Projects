import 'package:bloc/bloc.dart';
import 'package:demohomescreen/bloc/drawer_navigation/drawer_nav_event.dart';
import 'package:demohomescreen/bloc/drawer_navigation/drawer_nav_state.dart';


class DrawerNavBloc extends Bloc<DrawerNavEvent, DrawerNavState> {
  DrawerNavBloc() : super(DrawerNavState()) {
    on<SetDrawerEvent>(_setDrawerEvent);
  }

  void _setDrawerEvent(SetDrawerEvent event, Emitter<DrawerNavState> states){
    emit(state.copyWith(wid: event.wid));
}
}
