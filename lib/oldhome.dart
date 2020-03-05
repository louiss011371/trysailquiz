//class GetJsonData extends StatefulWidget {
//  @override
//  _GetJsonDataState createState() => new _GetJsonDataState();
//}
//
//class _GetJsonDataState extends State<GetJsonData> {
//  List data;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//        body: new Container(
//          child: new Center(
//            // Use future builder and DefaultAssetBundle to load the local JSON file
//            child: new FutureBuilder(
//                future: DefaultAssetBundle.of(context)
//                    .loadString('assets/json/news.json'),
//                builder: (context, snapshot) {
//                  List<News> news =
//                  parseJson(snapshot.data.toString());
//                  return news.isNotEmpty
//                      ? new CountyList(news: news)
//                      : new Center(child: new CircularProgressIndicator());
//                }),
//          ),
//        ));
//  }
//
//  List<News> parseJson(String response) {
//    if(response==null){
//      return [];
//    }
//    final parsed =
//    json.decode(response.toString()).cast<Map<String, dynamic>>();
//    return parsed.map<News>((json) => new News.fromJson(json)).toList();
//  }
//}
//
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new HomeState();
//  }
//}
//
//class HomeState extends HomePage {
//
//}
//
//
