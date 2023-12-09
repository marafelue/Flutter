import 'package:flutter/material.dart';
import 'package:topup_application/PopUpVerification.dart';

class ItemPage extends StatefulWidget {
  static String UserID = "";
  static String ZoneID = "";
  static String PhoneNumber = "";

  ItemPage({Key? key}) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  final TextEditingController UserIDController = TextEditingController();
  final TextEditingController ZoneIDController = TextEditingController();
  final TextEditingController PhoneNumberController = TextEditingController();

  int SelectedItemAmount = 0;
  int SelectedCardIndex = -1;
  String SelectedPaymentMethod = '';

  void SelectedItem(int Amount) {
    SelectedItemAmount = Amount;
  }

  void SelectPaymentMethod(String PaymentMethod) {
    setState(() {
      SelectedPaymentMethod = PaymentMethod;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              child: Text(
                'Pilih Item',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset('image/header.png'),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 474,
                  color: Color.fromARGB(28, 28, 28, 0),
                ),
                Positioned(
                  top: 180,
                  left: 16,
                  height: 280,
                  width: 356,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(65, 65, 65, 100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'MOBILE LEGEND',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.cyan,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PlusJakartaSans',
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Selalu Waspada Penipuan Mengatasnamakan YORASTORE, Pastikan Melakukan pembelian hanya melalui aplikasi dan website resmi kami. Seluruh orderan diamond Hanya Melalui Website CS official : 081231257233 IG official : @yogisswara_store(follower 200k)',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'PlusJakartaSans',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 30,
                  child: Image.asset('image/header_logo.png'),
                ),
              ],
            ),

            //step 1
            Container(
              width: 356,
              height: 280,
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(65, 65, 65, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('image/nomor_1.png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Masukkan Player ID',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlusJakartaSans',
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Color.fromRGBO(59, 59, 59, 100),
                    thickness: 2,
                    indent: 6,
                    endIndent: 6,
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            controller: UserIDController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 16.0),
                              filled: true,
                              fillColor: Color.fromARGB(45, 45, 45, 100),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              hintText: 'User ID',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(136, 136, 136, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            controller: ZoneIDController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 16.0),
                              filled: true,
                              fillColor: Color.fromARGB(45, 45, 45, 100),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              hintText: 'Zone ID',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(136, 136, 136, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Untuk menemukan ID & Zone ID akun Anda, klik avatar Anda di pojok kiri atas layar dan buka tab Info Umum. Contoh: 12345678 (2345), maka ID adalah 12345678 dan Zone ID adalah 2345',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  )
                ],
              ),
            ),

            //step 2
            Container(
              width: 356,
              height: 625,
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(65, 65, 65, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('image/nomor_2.png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Pilih Item',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlusJakartaSans',
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Color.fromRGBO(59, 59, 59, 100),
                    thickness: 2,
                    indent: 6,
                    endIndent: 6,
                  ),
                  SizedBox(height: 12),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            SelectedCardIndex = index;
                          });
                        },
                        child: Card(
                          color: Color.fromARGB(59, 59, 59, 100),
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: SelectedCardIndex == index
                                  ? Colors.cyan
                                  : Colors.transparent,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'image/diamond.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '${(index + 1) * 100} Diamond',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'PlusJakartaSans',
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Rp. ${(index + 1) * 100000}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            //step 3
            Container(
              width: 356,
              height: 430,
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(65, 65, 65, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('image/nomor_3.png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Pilih Pembayaran',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlusJakartaSans',
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Color.fromRGBO(59, 59, 59, 100),
                    thickness: 2,
                    indent: 6,
                    endIndent: 6,
                  ),
                  SizedBox(height: 12),
                  //QRIS Methods
                  Container(
                    width: 340,
                    height: 95,
                    child: GestureDetector(
                      onTap: () => SelectPaymentMethod('QRIS'),
                      child: Card(
                        color: Color.fromARGB(80, 80, 80, 100),
                        borderOnForeground: true,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: SelectedPaymentMethod == 'QRIS'
                                    ? Colors.cyan
                                    : Colors.transparent,
                                width: 3.0),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            children: [
                              Container(
                                color: Color.fromARGB(59, 59, 59, 100),
                                padding: EdgeInsets.all(8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'QRIS',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'PlusJakartaSans',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('image/QRIS_0.png'),
                                  SizedBox(width: 12),
                                  Image.asset('image/QRIS_1.png'),
                                  SizedBox(width: 12),
                                  Image.asset('image/QRIS_2.png'),
                                  SizedBox(width: 12),
                                  Image.asset('image/QRIS_3.png'),
                                  SizedBox(width: 12),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  //CS Methods
                  Container(
                    width: 340,
                    height: 95,
                    child: GestureDetector(
                      onTap: () => SelectPaymentMethod('Convenience Store'),
                      child: Card(
                        color: Color.fromARGB(80, 80, 80, 100),
                        borderOnForeground: true,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color:
                                    SelectedPaymentMethod == 'Convenience Store'
                                        ? Colors.cyan
                                        : Colors.transparent,
                                width: 3.0),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            children: [
                              Container(
                                color: Color.fromARGB(59, 59, 59, 100),
                                padding: EdgeInsets.all(8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Convenience Store',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'PlusJakartaSans',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('image/CS_0.png'),
                                  SizedBox(width: 12),
                                  Image.asset('image/CS_1.png'),
                                  SizedBox(width: 12),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  //VA Methods
                  Container(
                    width: 340,
                    height: 95,
                    child: GestureDetector(
                      onTap: () => SelectPaymentMethod('Virtual Account'),
                      child: Card(
                        color: Color.fromARGB(80, 80, 80, 100),
                        borderOnForeground: true,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color:
                                    SelectedPaymentMethod == 'Virtual Account'
                                        ? Colors.cyan
                                        : Colors.transparent,
                                width: 3.0),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Column(
                            children: [
                              Container(
                                color: Color.fromARGB(59, 59, 59, 100),
                                padding: EdgeInsets.all(8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Virtual Account',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'PlusJakartaSans',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('image/VA_0.png'),
                                  SizedBox(width: 12),
                                  Image.asset('image/VA_1.png'),
                                  SizedBox(width: 12),
                                  Image.asset('image/VA_2.png'),
                                  SizedBox(width: 12),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //step 4
            Container(
              width: 356,
              height: 310,
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(65, 65, 65, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('image/nomor_4.png'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Nomor Whatsapp',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PlusJakartaSans',
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Color.fromRGBO(59, 59, 59, 100),
                    thickness: 2,
                    indent: 6,
                    endIndent: 6,
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextField(
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      controller: PhoneNumberController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        filled: true,
                        fillColor: Color.fromARGB(45, 45, 45, 100),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        hintText: '08xXXXXXXXXX',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(136, 136, 136, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Bukti pembelianmu akan kami kirimkan ke Whatsapp.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'PlusJakartaSans',
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (SelectedCardIndex == -1 ||
                          SelectedPaymentMethod.isEmpty ||
                          UserIDController.text.isEmpty ||
                          ZoneIDController.text.isEmpty ||
                          PhoneNumberController.text.isEmpty) {
                        showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.black,
                              content: Container(
                                  height: 220.0,
                                  width: 150.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('image/alert.png'),
                                      SizedBox(height: 20),
                                      Text(
                                        'Harap isi semua item sebelum melakukan konfirmasi !',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'PlusJakartaSans',
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )),
                            );
                          },
                        );
                      } else {
                        // Jika tidak kosong, lanjutkan dengan proses top up
                        PopUpVerification.showPopUp(
                          context,
                          UserIDController.text,
                          ZoneIDController.text,
                          PhoneNumberController.text,
                          SelectedCardIndex,
                          SelectedPaymentMethod,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 191, 6),
                      onPrimary: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      fixedSize: Size(203.5, 48.0),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Konfirmasi Top Up',
                          style: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
