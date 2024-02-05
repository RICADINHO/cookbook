import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'principal.dart';

void main() async {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Main()));
}

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 120, 120),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            scrollDirection: Axis.vertical,
            //Dar set ao Carousel para o comprimento total do ecrã
            height: MediaQuery.of(context).size.height,
            //Dar set ao Carousel para a largura total do ecrã
            viewportFraction: 1.0,
            //Não permitir dar mais dq um Slide
            enableInfiniteScroll: false,
          ),
          items: [
            //Widget que permite vários widgets -> Dar overlay do nome da aplicação sobre o wallpaper
            Stack(
              alignment: Alignment.center,
              children: [
                //Wallpaper
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('resources/the_rock.jpg'),
                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Nome da Aplicação
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.07,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.13,
                    /*decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(25, 95, 255, 1.0),
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(35.0),
                    ),*/
                    child: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "RICADINHO's",
                          style: TextStyle(
                            //color: Color.fromRGBO(25, 95, 255, 1.0),
                            color: Color.fromRGBO(225, 227, 155, 1),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                                Positioned(
                  top: MediaQuery.of(context).size.height * 0.81,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.13,
                    /*decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(25, 95, 255, 1.0),
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(35.0),
                    ),*/
                    child: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "COOK BOOK",
                          style: TextStyle(
                            color: Color.fromRGBO(225, 227, 155, 1),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            //Prox Página -> Login Pag
            const principal(),
          ],
        ),
      ),
    );
  }
}
