
import 'package:demohomescreen/bloc/drawer_navigation/drawer_nav_bloc.dart';
import 'package:demohomescreen/bloc/drawer_navigation/drawer_nav_event.dart';
import 'package:demohomescreen/widgets/home_page.dart';
import 'package:demohomescreen/widgets/test_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyStepperRow extends StatefulWidget {
  List<String> subMenus;
  MyStepperRow({required this.subMenus});
  @override
  _MyStepperRowState createState() => _MyStepperRowState();
}

class _MyStepperRowState extends State<MyStepperRow> {
  int _currentStep = 0;
  late int _totalSteps ;

  @override
  void initState() {
    super.initState();
    // Initialize _totalSteps here, after the construction of the widget
    _totalSteps = widget.subMenus.length;
  }

  Widget _buildStepper(int stepCount, int currentStep) {
    return Container(
      padding: EdgeInsets.only(left: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(stepCount, (index) {
          return Container(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.circle,
              size: 14.0,
              color: index == _currentStep ? Colors.blue : Colors.grey,
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Stepper
        _buildStepper(_totalSteps, widget.subMenus.length ),

        // This SizedBox represents the line connecting the dots.
        SizedBox(
          height: 10,
        ),

        // ListTile
        Column(
          children: List.generate(widget.subMenus.length, (index) {
            return Container(
              padding: EdgeInsets.all(4.0),
              child: InkWell(
                onTap: (){
                  setState(() {
                    _currentStep = index;
                    if(index%2==1){
                      context.read<DrawerNavBloc>().add(SetDrawerEvent(wid: Dummy()));
                    }
                    else{
                      context.read<DrawerNavBloc>().add(SetDrawerEvent(wid: HomePage()));
                    }
                  });
                },
                child: Text(
                  widget.subMenus[index],
                  style:  TextStyle(color:  Colors.white),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

/* ListTile(
            title: Text('Step ${_currentStep + 1}'),
            trailing: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                setState(() {
                  _currentStep = (_currentStep + 1) % _totalSteps;
                });
              },
            ),
          ) */