import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _buildList() => ListView(
        children: [
          _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
          _tile('The Castro Theater', '429 Castro St', Icons.theaters),
          _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
          _tile('Roxie Theater', '3117 16th St', Icons.theaters),
          _tile('United Artists Stonestown Twin', '501 Buckingham Way',
              Icons.theaters),
          _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
          Divider(),
          _tile('Kescaped_code#39;s Kitchen', '757 Monterey Blvd',
              Icons.restaurant),
          _tile('Emmyescaped_code#39;s Restaurant', '1923 Ocean Ave',
              Icons.restaurant),
          _tile(
              'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
          _tile('La Ciccia', '291 30th St', Icons.restaurant),
        ],
      );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter list demo',
      home: Scaffold(
        appBar: AppBar(
          Text('Flutter list demo'),
        ),
        body: Center(child: _buildList()),
      ),
    );
  }
}
