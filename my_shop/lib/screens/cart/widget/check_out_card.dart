import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/config/palette.dart';
import '/widget/default_btn.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Palette.kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset('assets/icons/receipt.svg'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Text(
                  'Add voucher code',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                label: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Palette.kTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Total:\n',
                  children: [
                    TextSpan(
                      text: '\$366.55',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 190,
                child: DefaultButton(
                  text: 'Check Out',
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
