import 'package:cartify/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _selectedMethod = 0; // 0: UPI, 1: Credit/Debit Card, 2: Net Banking, 3: Cash on Delivery
  bool _isUPIDropdownOpen = false;
  bool _isNetBankingDropdownOpen = false; // New state for Net Banking dropdown
  String _selectedUPIOption = "";
  String _selectedNetBankingOption = ""; // New state for selected Net Banking option
  bool _isCreditDebitCardFormVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF317773),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Checkout()));
          },
        ),
        centerTitle: true,
        title: Text(
          "Payment Method",
          style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              _buildPaymentOption(0, "UPI"),
              if (_selectedMethod == 0 && _isUPIDropdownOpen) _buildUPIDropdown(),
              SizedBox(height: 20),
              _buildPaymentOption(1, "Credit / Debit Card"),
              if (_selectedMethod == 1) _buildCreditDebitCardForm(),
              SizedBox(height: 20),
              _buildPaymentOption(2, "Net Banking"),
              if (_selectedMethod == 2 && _isNetBankingDropdownOpen) _buildNetBankingDropdown(),
              SizedBox(height: 20),
              _buildPaymentOption(3, "Cash On Delivery"),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 20),
                child: Container(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xffD9D9D9),
                      backgroundColor: const Color(0xff317773),
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ), // foreground
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Save",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentOption(int value, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 80,
        width: 306,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListTile(
            leading: Icon(
              _selectedMethod == value
                  ? Icons.radio_button_checked
                  : Icons.radio_button_off_outlined,
              color: Color(0xff317773),
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.bold,
                fontFamily: "Sen",
                fontSize: 14,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  _selectedMethod = value;
                  _isUPIDropdownOpen = value == 0 ? !_isUPIDropdownOpen : false;
                  _isCreditDebitCardFormVisible = value == 1;
                  _isNetBankingDropdownOpen = value == 2 ? !_isNetBankingDropdownOpen : false; // Toggle Net Banking dropdown
                });
              },
              icon: Icon(
                (_isUPIDropdownOpen && _selectedMethod == value) || (_isNetBankingDropdownOpen && _selectedMethod == value)
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 35,
                color: Color(0xff317773),
              ),
            ),
            onTap: () {
              setState(() {
                _selectedMethod = value;
                _isUPIDropdownOpen = value == 0 ? !_isUPIDropdownOpen : false;
                _isCreditDebitCardFormVisible = value == 1;
                _isNetBankingDropdownOpen = value == 2 ? !_isNetBankingDropdownOpen : false; // Toggle Net Banking dropdown
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildUPIDropdown() {
    return Padding(
      padding: const EdgeInsets.only(left: 55, right: 35, top: 10),
      child: Column(
        children: [
          _buildUPIOption("PhonePe", "assets/image/img_31.png"),
          SizedBox(height: 10),
          _buildUPIOption("Google Pay", "assets/image/img_48.png"),
          SizedBox(height: 10),
          _buildUPIOption("Paytm", "assets/image/img_49.png"),
          SizedBox(height: 10),
          _buildUPIOption("Amazon Pay", "assets/image/img_50.png"),
        ],
      ),
    );
  }

  Widget _buildUPIOption(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: ListTile(
        leading: Image.asset(imagePath, width: 30, height: 30),
        title: Text(
          title,
          style: TextStyle(
            color: Color(0xff000000),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 14,
          ),
        ),
        trailing: Radio<String>(
          value: title,
          groupValue: _selectedUPIOption,
          onChanged: (String? value) {
            setState(() {
              _selectedUPIOption = value!;
            });
          },
        ),
        onTap: () {
          setState(() {
            _selectedUPIOption = title;
          });
        },
      ),
    );
  }

  Widget _buildNetBankingDropdown() {
    return Padding(
      padding: const EdgeInsets.only(left: 55, right: 35, top: 10),
      child: Column(
        children: [
          _buildNetBankingOption("SBI", "assets/image/img_51.png"),
          SizedBox(height: 10),
          _buildNetBankingOption("HDFC", "assets/image/img_52.png"),
          SizedBox(height: 10),
          _buildNetBankingOption("Axis Bank", "assets/image/img_53.png"),
          SizedBox(height: 10),
          _buildNetBankingOption("ICICI", "assets/image/img_54.png"),
        ],
      ),
    );
  }

  Widget _buildNetBankingOption(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: ListTile(
        leading: Image.asset(imagePath, width: 30, height: 30),
        title: Text(
          title,
          style: TextStyle(
            color: Color(0xff000000),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 14,
          ),
        ),
        trailing: Radio<String>(
          value: title,
          groupValue: _selectedNetBankingOption,
          onChanged: (String? value) {
            setState(() {
              _selectedNetBankingOption = value!;
            });
          },
        ),
        onTap: () {
          setState(() {
            _selectedNetBankingOption = title;
          });
        },
      ),
    );
  }

  Widget _buildCreditDebitCardForm() {
    return Padding(
      padding: const EdgeInsets.only(left: 55, right: 35, top: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        height: 260,
        width: 680,

        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              _buildTextField("Name On Card"),
              SizedBox(height: 10),
              _buildTextField("Card Number"),
              SizedBox(height: 10),
              _buildTextField("Expiry Date (mm/yy)"),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xffD9D9D9),
                  backgroundColor: const Color(0xff317773),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  // Implement save card functionality
                },
                child: const Text(
                  "Save Card",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
