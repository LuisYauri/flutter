import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.flim18-2.fna.fbcdn.net/v/t1.0-9/p960x960/71643807_2291313827866125_3859228226572255232_o.jpg?_nc_cat=106&_nc_sid=85a577&_nc_eui2=AeEFnTW0QtmZR53iANddtLFVc-__3hegRHVz7__eF6BEdcDBb44PSLxFepO_5ZyWEBpFtNffcwbsvDjYiitNbuWq&_nc_ohc=LSroc6x7rRAAX8_oF79&_nc_ht=scontent.flim18-2.fna&_nc_tp=6&oh=a58940b9144809f85985b4bec05dc3c4&oe=5EC0745B'),
              radius: 23.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://scontent.flim18-2.fna.fbcdn.net/v/t1.0-9/p960x960/71643807_2291313827866125_3859228226572255232_o.jpg?_nc_cat=106&_nc_sid=85a577&_nc_eui2=AeEFnTW0QtmZR53iANddtLFVc-__3hegRHVz7__eF6BEdcDBb44PSLxFepO_5ZyWEBpFtNffcwbsvDjYiitNbuWq&_nc_ohc=LSroc6x7rRAAX8_oF79&_nc_ht=scontent.flim18-2.fna&_nc_tp=6&oh=a58940b9144809f85985b4bec05dc3c4&oe=5EC0745B'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
