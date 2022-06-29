import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: DevCard(),
));

class DevCard extends StatefulWidget {
   const DevCard({Key? key}) : super(key: key);

  @override
  State<DevCard> createState() => _DevCardState();

}

class _DevCardState extends State<DevCard> {

  int devLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text('Dev ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() { //when set state is called it triggers the build function and rebuilds it with the new state.
            devLevel += 1;
          });
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile-picture.png'),
                    radius: 60.0,
                  ),
                ),

                const Divider(
                height: 30.0,
                color: Colors.grey,
                ),

                const Text('Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),

                const SizedBox(height: 5.0,),

                const Text('Lambda Warrior',
                    style: TextStyle(
                      color: Colors.amber,
                      letterSpacing: 2.0,
                      fontSize:  28.0,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 25.0,),

                const Text('Current Developer Level',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    )),

                const SizedBox(height: 5.0,),

                Text('$devLevel',
                    style: const TextStyle(
                      color: Colors.amber,
                      letterSpacing: 2.0,
                      fontSize:  28.0,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10.0,),

                Row(
                  children: const [
                    Icon(
                      Icons.email,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      'lambda1@heroku.com',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.facebook,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      'lambdaOfficial',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                )
              ],
            )
      ),
    );
  }
}


