import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:form_validator/form_validator.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/common/widgets/input_label.dart';
import 'package:task_chase/screens/signup/signup_controller.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/extentions/color_scheme.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class SignupUserDataForm extends StatelessWidget {
  const SignupUserDataForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    RegExp passwordRegExp = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}|:"<>?]).{8,}$',
    );

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const InputLabel(labelText: "First Name"),
                    InputField(
                      controller: controller.firstName,
                      onValidation:
                          ValidationBuilder().maxLength(30).required().build(),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: KSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const InputLabel(labelText: "Last Name"),
                    InputField(
                      controller: controller.lastName,
                      onValidation:
                          ValidationBuilder().maxLength(30).required().build(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InputLabel(labelText: "Email"),
              InputField(
                controller: controller.email,
                onValidation: ValidationBuilder()
                    .email("Invalid Email")
                    .maxLength(150)
                    .required("Email is required")
                    .build(),
              ),
              const InputLabel(labelText: "Password"),
              Obx(
                () => InputField(
                  isPassword: controller.hidePassword.value,
                  suffixIcon: controller.hidePassword.value &&
                          controller.password.text.isNotEmpty
                      ? Iconsax.eye_slash_copy
                      : Iconsax.eye_copy,
                  controller: controller.password,
                  onClickSuffix: () {
                    controller.hidePassword.value =
                        !controller.hidePassword.value;
                  },
                  onValidation: ValidationBuilder()
                      .required("Password is required.")
                      .maxLength(15)
                      .regExp(passwordRegExp,
                          "You entered password is not a valid password. It must contain at least one lowercase letter, one uppercase letter, one number, one special character, and be at least 8 characters long.")
                      .build(),
                ),
              ),
              const InputLabel(labelText: "Country"),
              SizedBox(
                width: double.infinity,
                child: Obx(
                  () => DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                          value: "sri-lanka", child: Text("Sri lanka")),
                      DropdownMenuItem(
                          value: "australia", child: Text("Australia")),
                    ],
                    value: controller.country.value,
                    onChanged: (value) => {controller.country.value = value!},
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.textFieldBorder,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.textFieldBorder,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.textFieldBorder,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.textFieldBorder,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xfff13b52),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: Colors.red,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InputLabel(labelText: "Address"),
              InputField(
                controller: controller.address,
                onValidation:
                    ValidationBuilder().maxLength(200).required().build(),
              ),
              const InputLabel(labelText: "NIC"),
              InputField(
                controller: controller.nic,
                onValidation: ValidationBuilder()
                    .minLength(9)
                    .maxLength(30)
                    .required()
                    .build(),
              ),
            ],
          ),
          const SizedBox(
            height: KSizes.md,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Checkbox(
                  value: controller.privacyPolicy.value,
                  onChanged: (value) {
                    controller.privacyPolicy.value =
                        !controller.privacyPolicy.value;
                  },
                ),
              ),
              const SizedBox(width: KSizes.spaceBtwItems),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: KTexts.agreeTo,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: KTexts.privacyPolicy,
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: KHelperFunctions.isDark(context)
                                          ? KColors.white
                                          : KColors.primary,
                                      decorationColor:
                                          KHelperFunctions.isDark(context)
                                              ? KColors.white
                                              : KColors.primary,
                                    ),
                          ),
                          TextSpan(
                            text: KTexts.and,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: KTexts.termsOfUse,
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: KHelperFunctions.isDark(context)
                                          ? KColors.white
                                          : KColors.primary,
                                      decorationColor:
                                          KHelperFunctions.isDark(context)
                                              ? KColors.white
                                              : KColors.primary,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: KSizes.spaceBtwSections),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.signup();
                  },
                  child: Text(
                    "Create Account",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
