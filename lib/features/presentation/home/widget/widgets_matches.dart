
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/core/resources/constants/color_manager.dart';
import 'package:mvvm_project/core/resources/constants/fonts_manager.dart';
import 'package:mvvm_project/core/resources/constants/strings_manager.dart';
import 'package:mvvm_project/core/resources/constants/styles_manger.dart';
import 'package:mvvm_project/core/resources/constants/value_manager.dart';
import 'package:mvvm_project/features/domain/model/model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class Widget_Matches extends StatelessWidget{


  late Matches_Model matches_model;
  late Competition_Model competition_model;


  Widget_Matches(this.matches_model,this.competition_model);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: AppSize.s100.w,
      margin: EdgeInsets.only(left: AppMargin.m4.w,right: AppMargin.m4.w,bottom: AppMargin.m2.h),
      padding: EdgeInsets.only(left: AppPading.p1.w,right: AppPading.p1.w,bottom: AppPading.p1.w),
      decoration: new BoxDecoration(
           color: ColorManager.grey.withOpacity(.3),
          border: Border.all(color: ColorManager.grey2.withOpacity(.3)),

          borderRadius: new BorderRadius.all(
            Radius.circular(AppRadius.r2.w),
          )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: AppMargin.m1),
            padding: EdgeInsets.only(left: AppPading.p4.w,right: AppPading.p4.w,top: AppPading.p1.h,bottom: AppPading.p1.h),
            decoration: new BoxDecoration(
                color: matches_model.status!.contains("LIVE")?ColorManager.error:ColorManager.Brown,
                borderRadius: new BorderRadius.all(
                  Radius.circular(AppRadius.r2.sp),
                )
            ),

            child: Text(
              matches_model.status.toString(),
              style: getSemiBoldStyle(
                color: ColorManager.white
              )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: AppMargin.m1.h),
            child: Text(
                matches_model.utcDate.toString(),
                style: getSemiBoldStyle(
                    color: ColorManager.white.withOpacity(.6),
                    fontSize: FontSize.s14.sp
                )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: AppMargin.m1.h,left: AppMargin.m1.w,right: AppMargin.m1.h),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: AppSize.s28.w,
                  alignment: Alignment.center,
                  child: Text(
                    matches_model.homeTeam!.name.toString(),
                      maxLines: 2,
                      style: getSemiBoldStyle(
                          color: ColorManager.white,
                          fontSize: FontSize.s16.sp
                      )
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                            matches_model.score!.fullTime!.homeTeam.toString(),
                            maxLines: 2,
                            style: getSemiBoldStyle(
                                color: ColorManager.white,
                                fontSize: FontSize.s16.sp
                            )
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: AppPading.p1.w,right: AppPading.p1.w),
                        alignment: Alignment.center,
                        child: Text(
                            '-',
                            style: getSemiBoldStyle(
                                color: ColorManager.white,
                                fontSize: FontSize.s16.sp
                            )
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                            matches_model.score!.fullTime!.awayTeam.toString(),
                            maxLines: 2,
                            style: getSemiBoldStyle(
                                color: ColorManager.white,
                                fontSize: FontSize.s16.sp
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: AppSize.s28.w,
                  alignment: Alignment.center,
                  child: Text(
                      matches_model.awayTeam!.name.toString(),
                      maxLines: 2,
                      style: getSemiBoldStyle(
                          color: ColorManager.white,
                          fontSize: FontSize.s16.sp
                      )
                  ),
                ),



              ],
            ),

          ),

          Container(
            margin: EdgeInsets.only(top: AppMargin.m1.h),
            child: Text(
                matches_model.date_formate.toString(),
                style: getSemiBoldStyle(
                    color: ColorManager.white.withOpacity(.6),
                    fontSize: FontSize.s14.sp
                )
            ),
          ),

          Container(
            child: Text(
                "${AppStrings.Start_At} ${matches_model.time_start}",
                style: getSemiBoldStyle(
                    color: ColorManager.white.withOpacity(.6),
                    fontSize: FontSize.s14.sp
                )
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(top: AppMargin.m1.h,left: AppMargin.m4.w,right: AppMargin.m4.w),
            width: double.infinity,
            height: AppSize.s1,
            color: ColorManager.white.withOpacity(.6),
          ),

          Container(
            margin: EdgeInsets.only(top: AppMargin.m1.h),
            child: Text(
                "${competition_model.name}",
                style: getSemiBoldStyle(
                    color: ColorManager.white,
                    fontSize: FontSize.s16.sp
                )
            ),
          ),

          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: AppMargin.m1.w,bottom: AppMargin.m1.h),
            child: Text(
                "${AppStrings.Week} ${matches_model.matchday}",
                style: getSemiBoldStyle(
                    color: ColorManager.white.withOpacity(.6),
                    fontSize: FontSize.s14.sp
                )
            ),
          ),
        ],
      ),

    );
  }

}