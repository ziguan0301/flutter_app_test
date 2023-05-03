import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app_test/constants.dart';
import 'components/main_category.dart';
import 'components/main_search_header.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController _tabcontroller = TabController(length: 3, vsync: this);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: kPrimaryColor,
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: kDefaultPadding,right: kDefaultPadding,),
                controller: _tabcontroller,
                //indicatorColor: Colors.blue[200], // 下面那条横线的颜色
                indicatorSize: TabBarIndicatorSize.tab, // 指示器是类型， label是这样的，tab是沾满整个tab的空间
                //indicatorWeight: 3.0, // 指示器的高度/厚度
                indicator: CircleTabIndicator(color: Colors.black,radius: 4),
                labelColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 22,
                  height: 2,
                ), // 选择的样式
                unselectedLabelColor: Colors.grey[400],
                unselectedLabelStyle: TextStyle(fontSize: 18,), // 未选择样式
                isScrollable: true,// 是否可以滑动
                tabs: <Widget>[
                  Tab(text: "食材管理"),
                  Tab(text: "食譜查詢"),
                  Tab(text: "購物清單"),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: TabBarView(
                controller: _tabcontroller,
                children: [
                  foodmanager(),
                  Container(child: HeaderWithSearchBOx(size: size,)),
                  foodmanager(),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }

// ctrl+alt+m 將程式碼提取出來Extract Method(太複雜)
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading:IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ) ,
    );
  }
}
class KeepAlivePage extends StatefulWidget {
  final Widget widget;
  const KeepAlivePage({required Key key, required this.widget, }) : super(key: key);

  @override
  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var result = widget;
    return result;
  }

  @override
  bool get wantKeepAlive => true;
}

//類別下面小圓點
class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]){
    return _CirclePainter(color:color,radius:radius);
  }
}
//類別下面小圓點
class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePainter({required this.color,required this.radius});

  @override
  void paint(Canvas canvas, Offset offset,
      ImageConfiguration configuration) {
      Paint _paint = Paint();
      _paint.color=color;
      _paint.isAntiAlias=true;
      final Offset circleOffset = Offset(configuration.size!.width/2-radius/2,configuration.size!.height-radius);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}