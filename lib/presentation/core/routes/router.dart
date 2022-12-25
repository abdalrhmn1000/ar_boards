import 'package:ae_boards/presentation/bill/pages/my_bill_boards_page.dart';
import 'package:ae_boards/presentation/payment/pages/payment_page.dart';
import 'package:ae_boards/presentation/request/pages/add_request_page.dart';
import 'package:ae_boards/presentation/request/pages/upload_your_add_page.dart';
import 'package:ae_boards/presentation/search/pages/search_page.dart';
import 'package:ae_boards/presentation/upload/pages/upload_details_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:ae_boards/presentation/home/pages/home_page.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // AutoRoute(page: SplashPage, initial: true),
     AutoRoute(page: HomePage, initial: true),
     AutoRoute(page: AddRequestPage),
     AutoRoute(page: UploadYourAddPage),
     AutoRoute(page: PaymentPage),
     AutoRoute(page: MyBillBoardsPage),
     AutoRoute(page: UploadDetailsPage),
     AutoRoute(page: SearchPage),
  ],
)
class $AppRouter {}
