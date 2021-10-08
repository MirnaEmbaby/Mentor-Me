import 'package:flutter/material.dart';
import 'package:mentor_me/assets_file.dart';
import 'package:mentor_me/screens/payment_terms_screen.dart';

enum PaymentMethod { visa, masterCard, mada, sadad }

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  PaymentMethod? _character = PaymentMethod.visa;

  void paymentTerms(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const PaymentTerms();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: b,
          elevation: 0,
          title: const Text(
            "الدفع",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: b,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      "برجاء دفع قيمة الإعلان",
                      style: TextStyle(
                        color: b,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      "assets/images/wallet.png",
                      width: 150,
                      height: 150,
                    ),
                    const Text(
                      "المبلغ المطلوب",
                      style: TextStyle(
                        color: b,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "300.00 ريال",
                      style: TextStyle(
                          color: b,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/visa.png",
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          width: 300,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: RadioListTile<PaymentMethod>(
                              title: const Text(
                                'فيزا',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              value: PaymentMethod.visa,
                              groupValue: _character,
                              onChanged: (PaymentMethod? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                              activeColor: b,
                              subtitle: const Text(
                                "ادفع باستخدام الفيزا",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 2), Row(
                      children: [
                        Image.asset(
                          "assets/images/mastercard.png",
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          width: 300,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: RadioListTile<PaymentMethod>(
                              title: const Text(
                                'ماستر كارد',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              value: PaymentMethod.masterCard,
                              groupValue: _character,
                              onChanged: (PaymentMethod? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                              activeColor: b,
                              subtitle: const Text(
                                "ادفع باستخدام الماستر كارد",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 2), Row(
                      children: [
                        Image.asset(
                          "assets/images/mada.png",
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          width: 300,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: RadioListTile<PaymentMethod>(
                              title: const Text(
                                'مدى',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              value: PaymentMethod.mada,
                              groupValue: _character,
                              onChanged: (PaymentMethod? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                              activeColor: b,
                              subtitle: const Text(
                                "ادفع باستخدام مدى",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 2), Row(
                      children: [
                        Image.asset(
                          "assets/images/sadad.png",
                          height: 50,
                          width: 50,
                        ),
                        Container(
                          width: 300,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: RadioListTile<PaymentMethod>(
                              title: const Text(
                                'سداد',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              value: PaymentMethod.sadad,
                              groupValue: _character,
                              onChanged: (PaymentMethod? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                              activeColor: b,
                              subtitle: const Text(
                                "ادفع باستخدام سداد",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 2),
                    const SizedBox(
                      height: 20
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () =>paymentTerms(context),
                        child: const Text(
                          "الدفع",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: b,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
