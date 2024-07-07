import 'package:flutter/material.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

@override
class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext cotext) {
    return  SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: KSizes.defaultSpace,
            vertical: KSizes.defaultSpace,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => {},
                      icon: const Image(image: AssetImage(KImages.visaIcon))),
                  const SizedBox(
                    width: KSizes.xs,
                  ),
                  IconButton(
                      onPressed: () => {},
                      icon: const Image(image: AssetImage(KImages.masterIcon))),
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: KSizes.spaceBtwInputFields,
                  ),
                  InputField(
                    hintText: "Card holder Name",
                  ),
                  SizedBox(
                    height: KSizes.spaceBtwInputFields,
                  ),
                  InputField(
                    hintText: "Card Number",
                  ),
                  SizedBox(
                    height: KSizes.spaceBtwInputFields,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: InputField(
                    hintText: "Expire Date",
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: InputField(
                    hintText: "CCV",
                  ))
                ],
              )
            ],
          ),
       
      ),
    );
  }
}
