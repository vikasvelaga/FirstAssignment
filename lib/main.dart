import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Information'),
        ),
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProfileSection(
          title: 'Personal Info',
          children: [
            ProfileInfoItem(label: 'Name', value: 'John Doe'),
            ProfileInfoItem(label: 'Age', value: '23'),
            ProfileInfoItem(label: 'Location', value: 'New York'),
          ],
        ),
        ProfileSection(
          title: 'Education',
          children: [
            ProfileInfoItem(label: 'Degree', value: 'BTECH in Computer Science'),
            ProfileInfoItem(label: 'University', value: 'South Point University'),
          ],
        ),
        ProfileSection(
          title: 'Interests',
          children: [
            ProfileInfoItem(label: 'Hobbies', value: 'Swimming, Cycling'),
          ],
        ),
        ProfileSection(
          title: 'Photos',
          children: [
            ProfilePhoto(imagePath: 'assets/photo1.jpg'),
            ProfilePhoto(imagePath: 'assets/photo2.jpg'),
            ProfilePhoto(imagePath: 'assets/photo3.jpg'),
          ],
        ),
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  ProfileSection({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          ...children,
        ],
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  final String label;
  final String value;

  ProfileInfoItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  final String imagePath;

  ProfilePhoto({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: Image.asset(imagePath, width: 200.0, height: 200.0),
    );
  }
}
