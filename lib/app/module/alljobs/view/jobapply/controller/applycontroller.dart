import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobizy/app/module/alljobs/model/searchrespo.dart';
import 'package:jobizy/app/module/alljobs/view/jobapply/model/applymodel.dart';
import 'package:jobizy/app/module/alljobs/view/jobapply/model/applyresponce.dart';
import 'package:jobizy/app/module/alljobs/view/viewscreen.dart';
import 'package:jobizy/app/services/jobapplyservice.dart';
import 'package:jobizy/app/util/route.dart';
import 'package:jobizy/app/util/snackbar.dart';

class JobApplyController extends ChangeNotifier {
  final fistname = TextEditingController();
  final lastname = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final qualificationcontroller = TextEditingController();
  final applyFormKey = GlobalKey<FormState>();
  final experiencecontroller = TextEditingController();
  String resume = '';
  
  bool isloading = false;

  void _isLoadingFalse() {
    isloading = false;
    notifyListeners();
  }

  Future<void> 
  jobApplyButton(SearchResponse jobid,context) async {
    if (applyFormKey.currentState!.validate()) {
      isloading = true;

      final modelObj = Applymodel(
          jobId: jobid.id,
          fname: fistname.text,
          lname: lastname.text,
          email: emailcontroller.text,
          phone: phonecontroller.text,
          experience: experiencecontroller.text,
          qualification: qualificationcontroller.text);

      Applyresponse? applyresponse =
          await ApplyService().applyjobservice(modelObj, context);

      if (applyresponse == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('some thing went wrong '));
        _isLoadingFalse();
        return;
      } else if (applyresponse.applied == true) {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('Already applied'));
        _isLoadingFalse();
      } else if (applyresponse.applied == false) {
        RouteNavigator.pushReplacement(context, const AllJobs());
        _isLoadingFalse();
      }
    }
  }

  void disposes() {
    applyFormKey.currentState!.reset();
  }
}