import 'package:flutter/material.dart';

void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          child: UiTiktok(),
        ),
        bottomNavigationBar: iconsActions(),
      ),
    );
  }

  Widget iconsActions() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white30,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/inicio.png'),
          ),
          title: Text(
            'Inicio',
            style: TextStyle(fontSize: 10),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/tendencias.png'),
          ),
          title: Text(
            'Tendencias',
            style: TextStyle(fontSize: 10),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/plus.png'),
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/bandeja.png'),
          ),
          title: Text(
            'Bandeja',
            style: TextStyle(fontSize: 10),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Image.asset('assets/icons/yo.png'),
          ),
          title: Text(
            'Yo',
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }
}

class UiTiktok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/post.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        blackGradiante(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            topBar(),
            Column(
              children: [
                actionBar(),
                postDetalle(),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget blackGradiante() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black54,
            Colors.black87,
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Siguiendo',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 40,
                height: 2,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Text(
                'Para ti',
                style: TextStyle(fontSize: 18, color: Colors.white30),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 30,
                height: 2,
                color: Colors.white30,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget actionBar() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/perfil.jpg',
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/icons/corazon.png'),
            SizedBox(
              height: 5,
            ),
            Text(
              '189.3k',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset('assets/icons/comentarios.png'),
            SizedBox(
              height: 5,
            ),
            Text(
              '1.500k',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset('assets/icons/compartir.png'),
            SizedBox(
              height: 5,
            ),
            Text(
              '180',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget postDetalle() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 8, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '@MarlenYS',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '5:25',
                style: TextStyle(fontSize: 12, color: Colors.white54),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text(
                      'FELIZ ANIVERSARIO AMOR !!! tantos buenos momentos a tu lado linda.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/musica.png',
                          width: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Mi corazon Encantado',
                          style: TextStyle(color: Colors.white60, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.white24,
                    width: 8,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/perfil.jpg',
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
