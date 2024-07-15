import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/switch_example/switch_event.dart';
import 'package:counter_bloc/bloc/switch_example/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<EnableOrDisableNotification>(_toggle);
    on<IncreaseOrDecreaseSlider>(_increaseOrDecreaseSlider);
  }

  void _toggle(EnableOrDisableNotification event,Emitter<SwitchState> emit){
    emit(state.copyWith(isNotificationEnabled: !state.isNotificationEnabled));
  }
  void _increaseOrDecreaseSlider(IncreaseOrDecreaseSlider event,Emitter<SwitchState> emit){
    emit(state.copyWith(slider: event.slider));
  }
}
