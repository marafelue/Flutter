import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:topup_application/ItemPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final PageController PageMover = PageController();
  int PageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: Colors.black,
        title: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Image.asset('image/brand.png'),
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Tinggi garis linear
          child: Container(
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(142, 53, 152, 1),
                  Color.fromRGBO(6, 235, 219, 1),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: PageView(
        controller: PageMover,
        onPageChanged: (index) {
          setState(() {
            PageIndex = index;
          });
        },
        physics: NeverScrollableScrollPhysics(), // not scrollable
        children: [
          // First Page (Home)
          HomePage(),

          // Second Page (Profile)
          ProfilePage(),

          // Third Page (History)
          HistoryPage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(142, 53, 152, 1),
              width: 2.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            PageMover.animateToPage(
              index,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
          currentIndex: PageIndex,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomeContent createState() => HomeContent();
}

class HomeContent extends State<HomePage> {
  final PageController MenuControll = PageController();
  int MenuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Card(
            color: const Color.fromARGB(31, 0, 0, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: CarouselSlider(
              items: [
                'image/advertisement1.png',
                'image/advertisement2.png',
                'image/advertisement3.png',
                'image/advertisement4.png',
                'image/advertisement5.png',
              ].map((item) {
                return Image.asset(item, fit: BoxFit.cover);
              }).toList(),
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                height: 135.0,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  MenuControll.animateToPage(
                    0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: TextButton.styleFrom(
                  primary: MenuIndex == 0 ? Colors.cyan : Colors.white,
                ),
                child: Text('Terlaris'),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  MenuControll.animateToPage(
                    1,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: TextButton.styleFrom(
                  primary: MenuIndex == 1 ? Colors.cyan : Colors.white,
                ),
                child: Text('Voucher'),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  MenuControll.animateToPage(
                    2,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: TextButton.styleFrom(
                  primary: MenuIndex == 2 ? Colors.cyan : Colors.white,
                ),
                child: Text('Entertainment'),
              ),
            ],
          ),
        ),
        Divider(
          color: Color.fromRGBO(59, 59, 59, 100),
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        Expanded(
          child: PageView(
            controller: MenuControll,
            onPageChanged: (index) {
              setState(() {
                MenuIndex = index;
              });
            },
            children: [
              MenuContent(0),
              MenuContent(1),
              MenuContent(2),
            ],
          ),
        ),
      ],
    );
  }

  Widget MenuContent(int pageIndex) {
    List<String> CardImageURL = CardPage(pageIndex);
    return ListView(
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
            childAspectRatio: 3 / 4.55,
          ),
          itemCount: CardImageURL.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemPage()),
                );
              },
              child: Card(
                color: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    height: double.infinity,
                    child: Image.asset(
                      CardImageURL[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(height: 24),
        Container(
          color: Color.fromARGB(65, 65, 65, 100),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Image.asset('image/footer_title.png'),
              SizedBox(height: 24),
              Text(
                  'YORASTORE adalah aplikasi topup game terdepan yang memudahkan pengguna untuk mengisi saldo game favorit dengan cepat dan aman. Topup Diskon Sd. 50% Mobile Legend, Genshin Impact, Voucher Google Play dan Banyak lainnya hanya di YoraStore. Harga Termurah Se Indonesia. Proses Otomatis Hitungan Detik',
                  style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white)),
              SizedBox(height: 24),
              Text(
                'IKUTI KAMI',
                style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Image.asset('image/instagram.png'),
                  SizedBox(
                    width: 8,
                  ),
                  Image.asset('image/youtube.png'),
                  SizedBox(
                    width: 8,
                  ),
                  Image.asset('image/tiktok.png'),
                ],
              ),
              SizedBox(height: 28),
              Divider(
                color: Colors.white,
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '© 2023 YoraStore. Semua Hak Cipta',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Syarat dan Ketentuan Pengguna',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 191, 6),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<String> CardPage(int pageIndex) {
    List<String> CardImageURL = [];

    if (pageIndex == 0) {
      CardImageURL = [
        'image/card_terlaris_0.png',
        'image/card_terlaris_1.png',
        'image/card_terlaris_2.png',
        'image/card_terlaris_3.png',
        'image/card_terlaris_4.png',
        'image/card_terlaris_5.png',
        'image/card_terlaris_6.png',
        'image/card_terlaris_7.png',
        'image/card_terlaris_8.png',
        'image/card_terlaris_9.png',
        'image/card_terlaris_10.png',
        'image/card_terlaris_11.png',
      ];
    } else if (pageIndex == 1) {
      CardImageURL = [
        'image/card_voucher_0.png',
        'image/card_voucher_1.png',
        'image/card_voucher_2.png',
        'image/card_voucher_3.png',
      ];
    } else if (pageIndex == 2) {
      CardImageURL = [
        'image/card_entertaiment_0.png',
        'image/card_entertaiment_1.png',
      ];
    }
    return CardImageURL;
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          // container yogi
          Container(
            height: 370,
            width: 365,
            decoration: BoxDecoration(
              color: Color.fromARGB(65, 65, 65, 100),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Image.asset('image/yogi.png'),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'I KADEK PURNA',
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 20,
                                  fontFamily: 'PlusJakartaSans',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'YOGISSWARA',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 20,
                                fontFamily: 'PlusJakartaSans',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Text(
                          '13.2022.1.01153',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'PlusJakartaSans'),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 12),
                        //divider
                        Container(
                          width: 170,
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(142, 53, 152, 1),
                                Color.fromRGBO(6, 235, 219, 1),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'CEO YORASTORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PlusJakartaSans'),
                        ),
                        SizedBox(height: 8),
                        // divider
                        Container(
                          width: 170,
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(142, 53, 152, 1),
                                Color.fromRGBO(6, 235, 219, 1),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                      'Sebagai CEO sekaligus yang membuat aplikasi ini, saya bertekad mengubah cara orang mengakses dan mengisi saldo game. Satu langkah demi satu langkah, saya terus mendedikasikan diri untuk menghadirkan inovasi bagi para pengguna setia YoraStore.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          // container padil
          Container(
            height: 360,
            width: 365,
            decoration: BoxDecoration(
              color: Color.fromARGB(65, 65, 65, 100),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24),
                Row(
                  children: [
                    SizedBox(width: 12),
                    Image.asset('image/padil.png'),
                    SizedBox(width: 16),
                    Column(
                      children: [
                        Text(
                          'M FADHIL PUTRA S',
                          style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 20,
                              fontFamily: 'PlusJakartaSans',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          '13.2022.1.01145',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'PlusJakartaSans'),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 8),
                        //divider
                        Container(
                          width: 170,
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(142, 53, 152, 1),
                                Color.fromRGBO(6, 235, 219, 1),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'UI/UX YORASTORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PlusJakartaSans'),
                        ),
                        SizedBox(height: 8),
                        // divider
                        Container(
                          width: 170,
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(142, 53, 152, 1),
                                Color.fromRGBO(6, 235, 219, 1),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                      'Sebagai desainer UI/UX di YoraStore. Fokus utama saya adalah menciptakan antarmuka aplikasi yang tangguh dan efisien. Saya yakin desain harus lebih dari estetika, tapi juga membuat pengguna merasa nyaman dan mudah berinteraksi.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 12, right: 16, left: 16),
      child: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('image/HistoryPageImage.png'),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
