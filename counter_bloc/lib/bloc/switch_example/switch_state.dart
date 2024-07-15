import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool  isNotificationEnabled;
  final double slider;
  const SwitchState({this.isNotificationEnabled = false,this.slider = 0.2 });

  SwitchState copyWith({bool? isNotificationEnabled, double? slider}){
    return SwitchState(isNotificationEnabled: isNotificationEnabled ?? this.isNotificationEnabled, slider: slider ?? this.slider);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isNotificationEnabled,slider];

}

