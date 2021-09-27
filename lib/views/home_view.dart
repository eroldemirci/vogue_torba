import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyage_demo/utils/textStyles.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: customAppBar(),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          temperatureRow(size),
          yaklasanEtkinliRow(),
          greyLine(size),
          eventListRow(),
          bodyListView(size)
        ],
      ),
    );
  }

  Container bodyListView(Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      width: size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          restoranlarCard(),
          senseSpaCard(),
          plajveHavuzlarCard(),
          tugiKidsWorldCard(),
          saglikBildirgesiCard(),
        ],
      ),
    );
  }

  Column restoranlarCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'RESTORANLAR & BARLAR',
          style: titleBoldStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        CachedNetworkImage(
            height: 250,
            width: double.maxFinite,
            fit: BoxFit.fill,
            imageUrl:
                'https://antalyacityzone.com/images/sehrini-tani/antalyanin-en-luks-7-restorani/501599655971.jpg'),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: const [
                  Text(
                    'Restoranlar',
                    style: titleLittleBoldStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Barlar',
                    style: titleLittleBoldStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Column tugiKidsWorldCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'TUGI KIDS WORLD',
          style: titleBoldStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        CachedNetworkImage(
            height: 250,
            width: double.maxFinite,
            fit: BoxFit.cover,
            imageUrl:
                'https://static.parenting.com/wp-content/uploads/2010/12/25194022/photo-1516533946470-2842a608d192-1200x720.jpg'),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: const [
                  Text(
                    'Tugi Kids World Oyun Parkı',
                    style: titleLittleBoldStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Gülen Bebekler',
                    style: titleLittleBoldStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Column senseSpaCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sense SPA',
          style: titleBoldStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        CachedNetworkImage(
            height: 250,
            width: double.maxFinite,
            fit: BoxFit.fill,
            imageUrl:
                'https://voyagecdn.blob.core.windows.net/mediafiles/VTO-Yeni-boyutlu/1803x720-VTO_SenseSpa_1.jpg'),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Column saglikBildirgesiCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'SAĞLIK & GÜVENLİK BİLDİRGESİ',
          style: titleBoldStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            CachedNetworkImage(
                height: 250,
                width: double.maxFinite,
                fit: BoxFit.fill,
                imageUrl:
                    'https://neu.edu.tr/wp-content/uploads/2020/12/08/korona-1.png'),
            Container(
              alignment: Alignment.center,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[900]?.withOpacity(0.8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child:
                    Text('Covid-19 Önlemlerimiz', style: covidOnlemleriStyle),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Column plajveHavuzlarCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PLAJ & HAVUZLAR',
          style: titleBoldStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        CachedNetworkImage(
            height: 250,
            width: double.maxFinite,
            fit: BoxFit.fill,
            imageUrl:
                'https://cdn1.ntv.com.tr/gorsel/8ibbp8fHTk2fKlZxKbP2xA.jpg?width=1000&mode=crop&scale=both'),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: const [
                  Text(
                    'Plaj',
                    style: titleLittleBoldStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Havuzlar',
                    style: titleLittleBoldStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'İskele',
                    style: titleLittleBoldStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Widget eventListRow() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        height: 250,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 250,
              width: 180,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                    child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl:
                            'https://jakobrent.com/wp-content/uploads/2018/05/1-3.jpg'),
                  ),
                  Container(
                    height: 60,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                    ),
                    child: const Text(
                      'AquaPark',
                      style: titleStyle,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 20,
            );
          },
        ));
  }

  Widget greyLine(Size size) {
    return Container(
      height: 3,
      width: size.width,
      color: Colors.grey[200],
    );
  }

  Widget yaklasanEtkinliRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Yaklaşan etkinlikler', style: titleStyle),
              Text('Tümünü Gör', style: tumunuGorStyle),
            ],
          ),
        ),
        Container(
          height: 170,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 9,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: 130,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade400,
                      radius: 50,
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 47,
                        child: CircleAvatar(
                          radius: 46,
                          backgroundImage: NetworkImage(
                            'https://www.barutlara.com/images/lara-spa-wellbeing-fitness-01.jpg',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Zumba Latino',
                      style: titleStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    //SizedBox(height: 10,),
                    const Text(
                      '17:00',
                      style: tumunuGorStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
          ),
        ),
      ],
    );
  }

  Container temperatureRow(Size size) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Colors.white),
      height: 50,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: const [
              Icon(CupertinoIcons.sun_max),
              SizedBox(
                width: 10,
              ),
              Text('20 C'),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(color: Colors.black),
            width: 1,
            height: 25,
          ),
          Row(
            children: const [
              Icon(Icons.water_outlined),
              SizedBox(
                width: 10,
              ),
              Text('24 C'),
            ],
          ),
        ],
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Image(
        image: AssetImage(
          'assets/images/voyage_logo.png',
        ),
        height: 150,
        width: 200,
      ),
      actions: const [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 30,
            ),
          ),
        )
      ],
      centerTitle: true,
    );
  }
}
