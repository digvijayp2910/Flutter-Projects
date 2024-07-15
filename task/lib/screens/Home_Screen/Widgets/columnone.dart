import 'package:flutter/material.dart';
class ColumnOne extends StatelessWidget {
  const ColumnOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(alignment: Alignment.topLeft,
        color: const Color.fromRGBO(245, 246, 252, 1),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20  ,left: 20,right: 20,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('images/butterfly.jpg'),
                ),
                const Text(
                  'mypost',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0,),
                ElevatedButton.icon(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 32.0,
                    color: Colors.white,// Adjust the size of the icon as needed
                  ),
                  label: const Text(
                    'Add Company',
                    style: TextStyle(fontSize: 20.0,
                        color: Colors.white), // Adjust the font size as needed
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                    ),
          
                    elevation: 8.0, // Set the elevation for the button
                    padding: const EdgeInsets.all(16.0), // Adjust padding as needed
                  ),
                ),
                const SizedBox(
                  height: 40.0, // Adjust the height of the SizedBox as needed
                ),
          
                 Container(padding: const EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: const [
                       // BoxShadow(
                       //   color: Colors.grey.shade300,
                       //   blurRadius: 5,
                       //   spreadRadius: 12,
                       // ),
                       BoxShadow(
                         color: Colors.black12,
                         blurRadius: 5,
                         spreadRadius: 1,
                         offset: Offset(10, 10),
                       ),
                     ],
                   ),
                   child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.dashboard,
                            size: 24.0, // Adjust the size of the icon as needed
                          ),
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
                        ),
                      ],
                    ),
                 ),
                 const SizedBox(height: 10,),
                 Container(padding: const EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.shade300,
                         blurRadius: 5,
                         spreadRadius: 1,
                       ),
                       const BoxShadow(
                         color: Colors.black12,
                         blurRadius: 5,
                         spreadRadius: 1,
                         offset: Offset(10, 10),
                       ),
                     ],),
                   child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.logout,
                            size: 24.0, // Adjust the size of the icon as needed
                          ),
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
                        ),
                      ],
                    ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
