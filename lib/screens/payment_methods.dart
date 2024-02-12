import 'package:flutter/material.dart';


class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}
int selectedPayment=0;
class _PaymentMethodsState extends State<PaymentMethods> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomPaymentCardButton(
              "assets/images/stripe.png", 0, "Credit Card"),
          const SizedBox(
            height: 10,
          ),
          CustomPaymentCardButton("assets/images/paypal.png", 1, "Paypal"),
          const SizedBox(height: 16.0),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 50,
              // width: MediaQuery.of(context).size.width/1.25,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),),
                  backgroundColor: const Color(0xff05035b),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if(selectedPayment==0){
                    Navigator.pop(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => MoyasarPayment(),));
                  }else if(selectedPayment==1){
                    Navigator.pop(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const DoneScreen(),));
                  }

                },
                child: const Text(
                  "Confirm",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget CustomPaymentCardButton(
      String assetName, int index, String paymentType) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selectedPayment = index;
        });
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        side: BorderSide(
            width: (selectedPayment == index) ? 2.0 : 0.5,
            color: (selectedPayment == index)
                ?  const Color(0xff05035b)
                : Colors.blue.shade600),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  textAlign: TextAlign.center,
                  paymentType,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  assetName,
                  fit: BoxFit.contain,
                  height: 80,
                ),
              ),
            ],
          ),
          if (selectedPayment == index)
            Positioned(
              top: 5,
              right: 5,
              child: Image.asset(
                "assets/images/accept.png",
                width: 25,
                fit: BoxFit.cover,
                color: Color(0xff05035b),
              ),
            ),
        ],
      ),
    );
  }
}
