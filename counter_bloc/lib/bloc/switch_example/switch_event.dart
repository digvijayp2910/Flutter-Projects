import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable{
  const SwitchEvent();
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class EnableOrDisableNotification extends SwitchEvent{}
class IncreaseOrDecreaseSlider extends SwitchEvent{
  double slider;
  IncreaseOrDecreaseSlider(this.slider);
}



