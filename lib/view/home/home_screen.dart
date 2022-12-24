import 'package:flutter/material.dart';
import 'package:isar_getx_todo_flutter/controller/counter_control.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: GestureDetector(
        onTap: () => context.read<Counter>().increment(),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularStepProgressIndicator(
                  totalSteps: 33,
                  currentStep: context.watch<Counter>().count%33,
                  stepSize: 10,
                  selectedColor: context.watch<Counter>().selectedColor,
                  unselectedColor: Colors.grey.shade200,
                  width: MediaQuery.of(context).size.width*0.7,
                  height: MediaQuery.of(context).size.width*0.7,
                  child:const Center(child: Count(), ),
                ),
               
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: context.watch<Counter>().count ==99?
   
           FloatingActionButton(
           backgroundColor:  Colors.pink.shade600,
            onPressed: () =>  context.read<Counter>().restartCounter(),
            tooltip: 'restart counter',
            child:  const Icon(Icons.restart_alt_rounded ),
 
      ): FloatingActionButton(
        backgroundColor:context.watch<Counter>().selectedColor ,
        key: const Key('increment_floatingActionButton'),
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: const Key('counterState'),
      style: TextStyle(color: context.watch<Counter>().selectedColor ,fontSize: 24.0),
    );
  }
}
