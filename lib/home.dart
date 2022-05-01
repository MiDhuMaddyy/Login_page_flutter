// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sample1/log_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: [
          IconButton(
            onPressed: () {
              signout(context);
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Text(
                'Football players',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/images/messi.jpg'),
              ),
              Text(
                'Lionel Messi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ("Lionel Andrés Messi (born 24 June 1987 in Rosario) is an Argentine international football player who played for FC Barcelona in the Primera División, and appears on Argentina's national team. Often touted in the media as New Maradona, Messi has been publicly named as his successor by Diego Maradona himself.He is regarded as the best football player of his generation and one of the best in the history of the sport. Messi received several Ballon dOr and FIFA World Player of the Year nominations by the age of 21, and won in 2009 and 2010."),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/cr7.jpg'),
              Text(
                'Cristiano Ronaldo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  ("Cristiano Ronaldo, in full Cristiano Ronaldo dos Santos Aveiro, (born February 5, 1985, Funchal, Madeira, Portugal), Portuguese football (soccer) forward who was one of the greatest players of his generation.Ronaldo’s father, José Dinis Aveiro, was the equipment manager for the local club Andorinha. (The name Ronaldo was added to Cristiano’s name in honour of his father’s favourite movie actor, Ronald Reagan, who was U.S. president at the time of Cristiano’s birth.) At age 15 Ronaldo was diagnosed with a heart condition that necessitated surgery, but he was sidelined only briefly and made a full recovery. He first played for Clube Desportivo Nacional of Madeira and then transferred to Sporting Clube de Portugal (known as Sporting Lisbon), where he played for that club’s various youth teams before making his debut on Sporting’s first team in 2002.")),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/images/Neymar.jpg'),
              ),
              Text(
                'Neymar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ("Neymar, in full Neymar da Silva Santos, Jr., (born February 5, 1992, Mogi das Cruzes, Brazil), Brazilian football (soccer) player who was one of the most prolific scorers in his country’s storied football history.Neymar began playing football as a boy in São Vicente, under the guidance of his father, a former professional footballer who remained a close adviser and mentor throughout his son’s career. Having played street and indoor five-a-side football, Neymar joined Portuguesa Santista’s youth team in São Vicente, and in 2003 he and his family moved to Santos. There Neymar, who was already an impressive player, joined the youth academy of Santos FC (the same club for which Brazilian football legend Pelé starred over the majority of his domestic career). At age 14 he had a successful trial with Spain’s Real Madrid, and Santos had to increase its spending to retain him."),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedprefs = await SharedPreferences.getInstance();
    await _sharedprefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => LoginScreen()), (route) => false);
  }
}
