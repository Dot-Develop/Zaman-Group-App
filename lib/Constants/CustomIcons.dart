import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

SvgPicture getAppIcons({
  @required String asset,
  double size = 50,
  color,
}) {
  return SvgPicture.asset(
    asset,
    width: size,
    height: size,
    color: color == null ? Colors.black : color,
    fit: BoxFit.contain,
  );
}

class AppIcons {
  static IconData homeIcon = FontAwesomeIcons.home;
  static IconData buyPagesIcon = FontAwesomeIcons.clone;
  static IconData printsIcon = FontAwesomeIcons.print;
  static IconData graphicDesignIcon = FontAwesomeIcons.penNib;
  static IconData sponsorIcon = FontAwesomeIcons.bullhorn;
  static IconData settingsIcon = FontAwesomeIcons.userCog;
  static IconData propertiesIcon = FontAwesomeIcons.userEdit;
  static IconData addressIcon = FontAwesomeIcons.mapMarkedAlt;
  static IconData editAccountIcon = FontAwesomeIcons.userAltSlash;
  static IconData contactIcon = FontAwesomeIcons.questionCircle;
  static IconData myAccountIcon = FontAwesomeIcons.user;
  static IconData myAccountSolidIcon = FontAwesomeIcons.solidUser;
  static IconData myWalletIcon = FontAwesomeIcons.wallet;
  static IconData myPointsIcon = FontAwesomeIcons.award;
  static IconData logoutIcon = FontAwesomeIcons.signOutAlt;
  static IconData languageIcon = FontAwesomeIcons.globeAfrica;

  static SvgPicture searchIconSvg = SvgPicture.asset(
    'assets/icons/searchIconSvg.svg',
    width: 50,
    height: 50,
    color: Color(0Xffffffff),
    fit: BoxFit.contain,
  );
  static String activity = 'assets/icons/activity.svg';
  static String add = 'assets/icons/add.svg';
  static String anniversary = 'assets/icons/anniversary.svg';
  static String awards = 'assets/icons/awards.svg';
  static String bankCard = 'assets/icons/bank-card.svg';
  static String bargain = 'assets/icons/bargain.svg';
  static String brsponser = 'assets/icons/brsponser.svg';
  static String cashCard = 'assets/icons/cash-card.svg';
  static String cobons = 'assets/icons/cobons.svg';
  static String companion = 'assets/icons/companion.svg';
  static String complain = 'assets/icons/complain.svg';
  static String deals = 'assets/icons/deals.svg';
  static String delivery = 'assets/icons/delivery.svg';
  static String designArea = 'assets/icons/design area.svg';
  static String disscounts = 'assets/icons/disscounts.svg';
  static String downloads = 'assets/icons/downloads.svg';
  static String emailIcon = 'assets/icons/email-icon.svg';
  static String exchangeCurrency = 'assets/icons/exchange-currency.svg';
  static String favorites = 'assets/icons/favorites.svg';
  static String giftCard = 'assets/icons/gift-card.svg';
  static String graphicDesign = 'assets/icons/graphic-design.svg';
  static String newsApp = 'assets/icons/hawala-app.svg';
  static String homIcon = 'assets/icons/hom-icon.svg';
  static String importBalance = 'assets/icons/import-balance.svg';
  static String locationIcon = 'assets/icons/location-icon.svg';
  static String medal = 'assets/icons/medal.svg';
  static String mobileIcon = 'assets/icons/mobilr-icon.svg';
  static String order = 'assets/icons/order.svg';
  static String orders = 'assets/icons/orders.svg';
  static String points = 'assets/icons/points.svg';
  static String printing = 'assets/icons/printing.svg';
  static String profileIcon = 'assets/icons/profile-icon.svg';
  static String receive = 'assets/icons/recive.svg';
  static String seller = 'assets/icons/seller.svg';
  static String sellers = 'assets/icons/sellers.svg';
  static String sendBalance = 'assets/icons/send-balance.svg';
  static String settings = 'assets/icons/settings.svg';
  static String smartCard = 'assets/icons/smart-card.svg';
  static String sponsor = 'assets/icons/sponser.svg';
  static String transfer = 'assets/icons/transfer.svg';
  static String wallet = 'assets/icons/wallet.svg';
  static String shopCart = 'assets/icons/shop_cart.svg';
  static String emptyShopCart = 'assets/icons/empty_shop_cart.svg';
  static String give = 'assets/icons/give.svg';

  // pink cell
  static String pinkCellActive = 'assets/pink_cell/active.svg';
  static String pinkCellPoint = 'assets/pink_cell/point.svg';
  static String pinkCellRefresh = 'assets/pink_cell/refresh.svg';
  static String pinkCellScan = 'assets/pink_cell/scan.svg';
  static String pinkCellSolidOrder = 'assets/pink_cell/soild_order.svg';
  static String pinkCellSolidWallet = 'assets/pink_cell/soild_wallet.svg';
}
