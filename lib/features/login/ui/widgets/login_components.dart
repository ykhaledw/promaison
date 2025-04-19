import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:promaison/core/shared_widgets/app_text_button.dart';
import 'package:promaison/core/shared_widgets/app_text_form_field.dart';
import 'package:promaison/core/theming/colors.dart';
import 'package:promaison/core/theming/styles.dart';

Widget loginComponents(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      actionsPadding: EdgeInsets.zero,
      iconTheme: const IconThemeData(color: Colors.white),
      leadingWidth: 20.w,
      title: Text(
        'تخطي التسجيل',
        style: TextStyles.font17WhiteSemiBold,
      ),
    ),
    body: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 65.h,
          ),
          child:
              Center(child: SvgPicture.asset('assets/svgs/promaison_logo.svg')),
        ),
        SizedBox(
          height: 76.h,
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 27.h,
                  ),
                  Text(
                    'تسجيل الدخول ',
                    style: TextStyles.font24BlackExtraBold,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    'سجل الدخول باستخدام رقم الجوال',
                    style: TextStyles.font16BrownRegular.copyWith(
                      color: Colors.grey.withValues(alpha: 0.7),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: appTextFormField(
                            hintText: 'ادخل رقم الجوال هنا',
                            validator: (value) {},
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black.withValues(alpha: 0.11),
                                width: 1.3,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.r),
                                bottomLeft: Radius.circular(30.r),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black.withValues(alpha: 0.11),
                                width: 1.3,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.r),
                                bottomLeft: Radius.circular(30.r),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.mainColor,
                                width: 1.3,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.r),
                                bottomLeft: Radius.circular(30.r),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.mainColor,
                                width: 1.3,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.r),
                                bottomLeft: Radius.circular(30.r),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 58.h,
                          width: 73.w,
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30.r),
                              topRight: Radius.circular(30.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '+21313',
                              style: TextStyles.font17WhiteRegular,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 63.h,
                    width: 258.w,
                    child: Text(
                      'باكمالك التسجيل فا أنت موافق علي الشروط والأحكام في PROMAISON   (قراءةالشروط)',
                      style: TextStyles.font15GreyRegular,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  appTextButton(
                    onPressed: () {},
                    buttonText: 'تسجيل الدخول',
                    textStyle: TextStyles.font18WhiteExtraBold,
                  ),
                  SizedBox(
                    height: 285.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
