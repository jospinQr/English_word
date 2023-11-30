import 'package:flutter/material.dart';
import 'package:my_first_app/HomeScreenState.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {


    var theme = Theme.of(context);
    var state = context.watch<HomeScreemState>();
    return Scaffold(
          appBar: AppBar( title: Text("English word",style: TextStyle(color: theme.colorScheme.onPrimary),),backgroundColor: theme.colorScheme.primary,),
          body: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text("Taper pour génèrer un mot anglais"),
                   BigBox(state: state),
                   ElevatedButton(onPressed: (){ state.nextWord();}, child: Text("Next")),
               ],
            ),
          ),
    );
  }
}

class BigBox extends StatelessWidget {
  const BigBox({
    super.key,
    required this.state,
  });

  final HomeScreemState state;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(state.currentWord.asLowerCase),
      ),
    );
  }
}
