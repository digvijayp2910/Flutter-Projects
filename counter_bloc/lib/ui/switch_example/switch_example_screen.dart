import 'package:counter_bloc/bloc/switch_example/switch_bloc.dart';
import 'package:counter_bloc/bloc/switch_example/switch_event.dart';
import 'package:counter_bloc/bloc/switch_example/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Example"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(children: [
              Text("Notification"),
              BlocBuilder<SwitchBloc, SwitchState>(
                buildWhen: (previous, current) => previous.isNotificationEnabled != current.isNotificationEnabled,
                builder: (context, state) {
                  return Switch(
                      value: state.isNotificationEnabled, onChanged: (val) {
                    context.read<SwitchBloc>().add(
                        EnableOrDisableNotification());
                  });
                },
              )
            ],),
            SizedBox(height: 20,),
            BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen: (pre,cur)=> pre.slider!=cur.slider,
              builder: (context, state) {
                print("building of container");
                return Container(
                  height: 200, color: Colors.red.withOpacity(state.slider),);
              },
            ),
            SizedBox(height: 50,),
            BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return Slider(value: state.slider, onChanged: (val) {
                  context.read<SwitchBloc>().add(
                      IncreaseOrDecreaseSlider(val));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
