import 'package:flutter/widgets.dart';
import 'package:jobizy/app/module/jobsection/appliedjobs/controller/appliedcontroller.dart';
import 'package:jobizy/app/module/jobsection/getsavedjobs/controller/getsaved.dart';
import 'package:jobizy/app/module/jobsection/savejobs/controller/savedcontroller.dart';
import 'package:jobizy/app/module/jobsection/jobapply/controller/applycontroller.dart';
import 'package:jobizy/app/module/jobsection/yourjobs/view/addjob.dart/controller/imagecontroller.dart';
import 'package:jobizy/app/module/bottomscreen/controller/bottomnavcon.dart';
import 'package:jobizy/app/module/homescreen/controller/homescreen.dart';
import 'package:jobizy/app/module/jobsection/searchscreen/controller/searchcontroll.dart';
import 'package:jobizy/app/module/register/signupscreen/controller/signupcontroller.dart';
import 'package:jobizy/app/module/userprofile/controller/createpostcontroller.dart';
import 'package:provider/provider.dart';

import '../../../main.dart';
import '../../module/jobsection/yourjobs/controller/jobcontroller.dart';
import '../../module/jobsection/yourjobs/view/addjob.dart/controller/addjobcon.dart';
import '../../module/register/loginscreen/controller/logincontroller.dart';
import '../../module/splash&onboard/splashacreen.dart';

class AllProviders {
  static Widget providers() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CreatePostController()),
        ChangeNotifierProvider(create: (context) => ApliedController(context)),
        ChangeNotifierProvider(create: (_) => JobSaveController()),
        ChangeNotifierProvider(
            create: (context) => SavedJobsController(context)),
        ChangeNotifierProvider(create: (_) => JobApplyController()),
        ChangeNotifierProvider(create: (_) => SearchController()),
        ChangeNotifierProvider(create: (context) => JobController(context)),
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => JobPostController()),
        ChangeNotifierProvider(create: (context) => HomeController(context)),
        ChangeNotifierProvider(create: (_) => SigninController()),
        ChangeNotifierProvider(create: (_) => SignupController()),
        ChangeNotifierProvider(create: (_) => UserImagePovHome()),
        ChangeNotifierProvider(create: (_) => BottomNavBarController()),
      ],
      child: const MyApp(),
    );
  }
}
