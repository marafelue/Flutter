import 'package:flutter/material.dart';

class PopUpVerification {
  static Future<void> showPopUp(
    BuildContext context,
    String UserID,
    String ZoneID,
    String PhoneNumber,
    int SelectedCardIndex,
    String SelectedPaymentMethod,
  ) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Detail Pesanan',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 0.5),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black,
          content: Container(
            constraints: BoxConstraints(maxWidth: 300, maxHeight: 800),
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Jika Data Pesanan Kamu Sudah Benar Klik Bayar Sekarang',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 28),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '- Data Player',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 8,
                    ),

                    //UserID
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'USER ID',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '$UserID',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                    //ZoneID
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ZONE ID',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '$ZoneID',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                    //username
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'USERNAME',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Yogisswara',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 24),
                    Text(
                      '- Ringkasan Pembelian',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 8,
                    ),

                    //nomor hp
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nomor Handphone',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '$PhoneNumber',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                    //harga
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Harga',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Rp. ${SelectedCardIndex * 100000 + 100000}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                    //fee
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fee',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Rp. 1500',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                    //total
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Rp. ${SelectedCardIndex * 100000 + 101500}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                    //sistem pembayaran
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sistem Pembayaran',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '$SelectedPaymentMethod',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        _showConfirmPopUp(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 191, 6),
                        onPrimary: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        fixedSize: Size(220, 48.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bayar Sekarang',
                            style: TextStyle(
                                fontFamily: 'PlusJakartaSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        fixedSize: Size(220, 48.0),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          contentPadding: EdgeInsets.all(24.0),
          /* actions: <Widget>[
            // actions kosong karena tombol sudah dimasukkan di dalam content
          ], */
        );
      },
    );
  }

//animation after click button
  static void _showConfirmPopUp(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          content: Container(
            height: 350.0,
            width: 290.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('image/Succes.png'),
                SizedBox(height: 32.0),
                Text(
                  'PEMBAYARAN ANDA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 191, 6),
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'BERHASIL !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 191, 6),
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
