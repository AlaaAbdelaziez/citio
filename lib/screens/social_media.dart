import 'package:city/core/utils/assets_image.dart';
import 'package:city/core/utils/variables.dart';
import 'package:city/core/widgets/post.dart';
import 'package:city/core/widgets/reactions.dart';
import 'package:city/core/widgets/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';
import 'package:multi_image_layout/image_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:multi_image_layout/multi_image_viewer.dart';

final Uri _url = Uri.parse('https://x.com/home');
final Uri videourl = Uri.parse(
    'https://videos.pexels.com/video-files/31585574/13459823_360_640_30fps.mp4');
const List<String> urls = [
  'https://t3.ftcdn.net/jpg/02/38/58/46/240_F_238584633_pqi96ixQ7g9iSSw5mxFRDk7IEDNtT7g9.jpg',
  'https://t3.ftcdn.net/jpg/02/50/50/98/240_F_250509856_bTdvNHM8TpqnCGS6s4u5B6MkNq4j9F7b.jpg',
  'https://t4.ftcdn.net/jpg/03/06/17/11/240_F_306171176_4z4nxYjiJjW1TFkutzD3PGI1GpY6SDBN.jpg',
  'https://t3.ftcdn.net/jpg/02/73/95/48/240_F_273954804_pQ7U2a5hdOZLoek2Ail0BhAlC7o9uq2a.jpg',
  'https://t4.ftcdn.net/jpg/02/30/50/25/240_F_230502578_HSzHuSDSknowd20km40bezErY6ORnifu.jpg',
];

class SocialMedia extends StatefulWidget {
  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  //const SocialMedia({super.key});
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.networkUrl(videourl)
      ..initialize().then((_) {
        _videoPlayerController.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: MyColors.bluesBackgroundColor,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('سيتم تحويلك خارج  citio'),
              content: const Text('هل أنت متأكد بأنك ترغب بالرحيل'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('الغاء'),
                ),
                TextButton(
                  onPressed: () {
                    launchUrl(_url, mode: LaunchMode.inAppWebView);
                  },
                  child: const Text('نعم'),
                ),
              ],
            ),
          ),
          backgroundColor: MyColors.cardcolor,
          label: Text(
            maxLines: 1,
            textAlign: TextAlign.center,
            'Show all',
            style: TextStyle(fontSize: 18, color: MyColors.fontcolor),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Icon(
            Icons.groups_2_outlined,
            color: MyColors.bluesBlue,
          ),
          centerTitle: true,
          //  excludeHeaderSemantics: true,
          backgroundColor: MyColors.bluesAppBarcolor,
          bottom: TabBar(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: MyColors.bluesBlue,
            indicatorColor: MyColors.bluesBlue,
            labelColor: MyColors.fontcolor,
            unselectedLabelColor: Colors.black,
            tabs: [
              TabItem(
                title: 'الأكثر رواجا',
              ),
              TabItem(
                title: 'الأحدث',
              ),
              TabItem(
                title: 'الأشخاص',
              ),
              TabItem(
                title: 'الوسائط',
              ),
              TabItem(
                title: 'الأخبار',
              ),
              TabItem(
                title: 'الرياضة',
              ),
              TabItem(
                title: 'Entertainment',
              ),
            ],
          ),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Post(
              avatar:
                  'https://t3.ftcdn.net/jpg/02/83/76/16/240_F_283761660_jGDMgzgTdNbQKhNTD5hzPLBBJyXOLGvv.jpg',
              userName: '@hawhaw',
              name: 'HawHaw',
              likeCount: 50,
              shareCount: 2,
              commentCount: 1,
              date: '2h',
              media: [
                'https://t3.ftcdn.net/jpg/04/04/43/30/240_F_404433072_8eV4kJgs0klW0IqTCexBOJWMUltISAuQ.jpg',
                'https://t4.ftcdn.net/jpg/02/25/32/73/240_F_225327340_D2K1Bkbr6nFWgc06tqLhs2X8E3sUM3fQ.jpg',
                'https://t3.ftcdn.net/jpg/02/88/66/64/240_F_288666465_1nkhsjAd3zMt6xM6paEaO0WIdv4oVfiM.jpg',
                'https://t3.ftcdn.net/jpg/02/38/58/46/240_F_238584633_pqi96ixQ7g9iSSw5mxFRDk7IEDNtT7g9.jpg',
                'https://t3.ftcdn.net/jpg/02/38/58/54/240_F_238585403_qCBruRkh5GGUNJYo7fFQ9ktSM6ZJfxiL.jpg',
              ],
              data:
                  'esidence certainly elsewhere something she preferred cordially law. Age his surprise formerly mrs perceive few stanhill moderate. Of in power match on truth worse voice would. Large an it sense shall an match learn. By expect it result silent in formal of. Ask eat questions abilities described elsewhere assurance. Appetite in unlocked advanced breeding position concerns as. Cheerful get shutters yet for repeated screened. An no am cause hopes at three. Prevent behaved fertile he is mistake on.'),
          Post(
              avatar:
                  'https://t3.ftcdn.net/jpg/02/83/76/16/240_F_283761660_jGDMgzgTdNbQKhNTD5hzPLBBJyXOLGvv.jpg',
              userName: '@hawhaw',
              name: 'HawHaw',
              likeCount: 50,
              shareCount: 2,
              commentCount: 1,
              date: '2h',
              media: [
                'https://t3.ftcdn.net/jpg/02/38/58/46/240_F_238584633_pqi96ixQ7g9iSSw5mxFRDk7IEDNtT7g9.jpg',
                'https://t3.ftcdn.net/jpg/02/38/58/54/240_F_238585403_qCBruRkh5GGUNJYo7fFQ9ktSM6ZJfxiL.jpg',
              ],
              data:
                  'esidence certainly elsewhere something she preferred cordially law. Age his surprise formerly mrs perceive few stanhill moderate. Of in power match on truth worse voice would. Large an it sense shall an match learn. By expect it result silent in formal of. Ask eat questions abilities described elsewhere assurance. Appetite in unlocked advanced breeding position concerns as. Cheerful get shutters yet for repeated screened. An no am cause hopes at three. Prevent behaved fertile he is mistake on.'),

          Post(
              avatar:
                  'https://t3.ftcdn.net/jpg/02/83/76/16/240_F_283761660_jGDMgzgTdNbQKhNTD5hzPLBBJyXOLGvv.jpg',
              userName: '@hawhaw',
              name: 'HawHaw',
              likeCount: 50,
              shareCount: 2,
              commentCount: 1,
              date: '2h',
              media: [
                'https://t3.ftcdn.net/jpg/04/04/43/30/240_F_404433072_8eV4kJgs0klW0IqTCexBOJWMUltISAuQ.jpg',
              ],
              data:
                  'esidence certainly elsewhere something she preferred cordially law. Age his surprise formerly mrs perceive few stanhill moderate. Of in power match on truth worse voice would. Large an it sense shall an match learn. By expect it result silent in formal of. Ask eat questions abilities described elsewhere assurance. Appetite in unlocked advanced breeding position concerns as. Cheerful get shutters yet for repeated screened. An no am cause hopes at three. Prevent behaved fertile he is mistake on.'),
          Post(
              avatar:
                  'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg',
              userName: '@hozifaa8',
              name: 'حذيفة',
              likeCount: 50,
              shareCount: 2,
              commentCount: 1,
              date: '2 jul',
              data:
                  'esidence certainly elsewhere something she preferred cordially law. Age his surprise formerly mrs perceive few stanhill moderate. Of in power match on truth worse voice would. Large an it sense shall an match learn. By expect it result silent in formal of. Ask eat questions abilities described elsewhere assurance. Appetite in unlocked advanced breeding position concerns as. Cheerful get shutters yet for repeated screened. An no am cause hopes at three. Prevent behaved fertile he is mistake on.'),

          Card(
              color: MyColors.white,
              shadowColor: MyColors.white,
              surfaceTintColor: MyColors.white,
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                height: 100,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/16261/16261670.png'),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 2, 10, 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'طلب رخصة قيادة',
                                  style: TextStyle(
                                    color: MyColors.fontcolor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // SizedBox(width: 160),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    'Wait for it \nقيد الانتظار',
                                    style: TextStyle(
                                      color: MyColors.fontcolor,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '2 jul 2019  12.30pm',
                          style: TextStyle(
                            color: Color.fromRGBO(134, 133, 133, 1),
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),

          Card(
              color: MyColors.backgroundColor,
              elevation: 3,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                                    child: Text(
                                      'حذيفة',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.fontcolor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '@Hozifah8',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        // fontWeight: FontWeight.normal,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '.23 Jul 16',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                                child: Text(
                                    'المالديف دولة مسلمة مهددة بالغرق بسبب التغير المناخي والارتفاع السنوي لمنسوب المياه والسياحة هي مصدر الدخل الاساسي للدولة التي تقوم بشراء اراضي في عدة دول استعدادا لنقل سكانها في المستقبل اذا استمر المنسوب بالارتفاع '),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(2, 4, 2, 2),
                                child: MultiImageViewer(images: [
                                  ImageModel(
                                      imageUrl:
                                          'https://t3.ftcdn.net/jpg/04/04/43/30/240_F_404433072_8eV4kJgs0klW0IqTCexBOJWMUltISAuQ.jpg'),
                                  ImageModel(
                                      imageUrl:
                                          'https://t4.ftcdn.net/jpg/02/25/32/73/240_F_225327340_D2K1Bkbr6nFWgc06tqLhs2X8E3sUM3fQ.jpg'),
                                  ImageModel(
                                      imageUrl:
                                          'https://t3.ftcdn.net/jpg/02/88/66/64/240_F_288666465_1nkhsjAd3zMt6xM6paEaO0WIdv4oVfiM.jpg'),
                                  ImageModel(
                                      imageUrl:
                                          'https://t3.ftcdn.net/jpg/02/38/58/46/240_F_238584633_pqi96ixQ7g9iSSw5mxFRDk7IEDNtT7g9.jpg'),
                                  ImageModel(
                                      imageUrl:
                                          'https://t3.ftcdn.net/jpg/02/38/58/54/240_F_238585403_qCBruRkh5GGUNJYo7fFQ9ktSM6ZJfxiL.jpg'),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon: const Icon(
                                        Icons.favorite_border_outlined),
                                    reactionHoverColor:
                                        Colors.red.withOpacity(.3)),
                                const Text(
                                  '9K',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon:
                                        const Icon(Icons.comment_outlined),
                                    reactionHoverColor:
                                        Colors.green.withOpacity(.3)),
                                const Text(
                                  '250',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon: Icon(Icons.repeat_rounded),
                                    reactionHoverColor:
                                        Colors.blue.withOpacity(.3)),
                                Text(
                                  '2.7k',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),

          Card(
              color: MyColors.backgroundColor,
              elevation: 3,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                                    child: Text(
                                      'حذiiيفة',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.fontcolor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '@Hozifah8',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        // fontWeight: FontWeight.normal,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '.23 Jul 16',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                                child: Text(
                                    'المالديف دولة مسلمة مهددة بالغرق بسبب التغير المناخي والارتفاع السنوي لمنسوب المياه والسياحة هي مصدر الدخل الاساسي للدولة التي تقوم بشراء اراضي في عدة دول استعدادا لنقل سكانها في المستقبل اذا استمر المنسوب بالارتفاع '),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(2, 4, 2, 2),
                                child: GalleryImage(
                                  numOfShowImages: 3,
                                  imageUrls: urls,
                                  titleGallery: 'Citio',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon: const Icon(
                                        Icons.favorite_border_outlined),
                                    reactionHoverColor:
                                        Colors.red.withOpacity(.3)),
                                const Text(
                                  '9K',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon:
                                        const Icon(Icons.comment_outlined),
                                    reactionHoverColor:
                                        Colors.green.withOpacity(.3)),
                                const Text(
                                  '250',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon: Icon(Icons.repeat_rounded),
                                    reactionHoverColor:
                                        Colors.blue.withOpacity(.3)),
                                Text(
                                  '2.7k',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),

          Card(
              color: MyColors.backgroundColor,
              elevation: 3,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                                    child: Text(
                                      'حذيفة',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.fontcolor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '@Hozifah8',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        // fontWeight: FontWeight.normal,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '.23 Jul 16',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                                child: Text(
                                    'المالديف دولة مسلمة مهددة بالغرق بسبب التغير المناخي والارتفاع السنوي لمنسوب المياه والسياحة هي مصدر الدخل الاساسي للدولة التي تقوم بشراء اراضي في عدة دول استعدادا لنقل سكانها في المستقبل اذا استمر المنسوب بالارتفاع '),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(2, 4, 2, 2),
                                child: GalleryImage(
                                  numOfShowImages: 4,
                                  imageUrls: urls,
                                  titleGallery: 'Citio',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon: const Icon(
                                        Icons.favorite_border_outlined),
                                    reactionHoverColor:
                                        Colors.red.withOpacity(.3)),
                                const Text(
                                  '9K',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon:
                                        const Icon(Icons.comment_outlined),
                                    reactionHoverColor:
                                        Colors.green.withOpacity(.3)),
                                const Text(
                                  '250',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Reactions(
                                    reactionIcon: Icon(Icons.repeat_rounded),
                                    reactionHoverColor:
                                        Colors.blue.withOpacity(.3)),
                                Text(
                                  '2.7k',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          Card(
              color: MyColors.backgroundColor,
              // elevation: 3,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                          child: Text(
                            'حذيفة',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: MyColors.fontcolor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '@Hozifah8',
                            style: const TextStyle(
                              fontSize: 13,
                              // fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '.23 Jul 16',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 45, 8),
                      child: Text(
                          textAlign: TextAlign.start,
                          'دي مفيهاش elevation\nHow it feels free trial no costs no concquences \n تبقى سايق موتسيكل في الزحمة وموتسيكلات كتيرة وراك بتمشي زي مانت بتمشيي'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('سيتم تحويلك خارج  citio'),
                                  content: const Text(
                                      'هل أنت متأكد بأنك ترغب بالرحيل'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('الغاء'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        launchUrl(_url,
                                            mode: LaunchMode.inAppWebView);
                                      },
                                      child: const Text('نعم'),
                                    ),
                                  ],
                                ),
                              ),
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: MyColors.themecolor,
                              ),
                            ),
                            Text(
                              '9K',
                              style: TextStyle(
                                  color: Color(0xFF9E9E9E), fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('سيتم تحويلك خارج  citio'),
                                  content: const Text(
                                      'هل أنت متأكد بأنك ترغب بالرحيل'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('الغاء'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        launchUrl(_url,
                                            mode: LaunchMode.inAppWebView);
                                      },
                                      child: const Text('نعم'),
                                    ),
                                  ],
                                ),
                              ),
                              icon: Icon(Icons.comment_outlined,
                                  color: MyColors.themecolor),
                            ),
                            Text(
                              '250',
                              style: TextStyle(
                                  color: Color(0xFF9E9E9E), fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.repeat_rounded,
                              color: MyColors.themecolor,
                            ),
                            Text(
                              '2.7k',
                              style: TextStyle(
                                  color: Color(0xFF9E9E9E), fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          //finest version adjust colors onlyyyyyyyyyyy
          Card(
            color: MyColors.backgroundColor,
            elevation: 3,
            //shadowColor: MyColors.themecolor,
            child: Container(
              padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://pbs.twimg.com/profile_images/1910524329193857024/hipgANrH_400x400.jpg'),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                                  child: Text(
                                    'Lol',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: MyColors.fontcolor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                  child: Text(
                                    '@lol2001',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      // fontWeight: FontWeight.normal,
                                      color: Color.fromRGBO(134, 133, 133, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                  child: Text(
                                    '.1h',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(134, 133, 133, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                              child: Text('Caption مفيهاش ٍshadowColor'),
                            ),
                            Card(
                                color: MyColors.backgroundColor,

                                //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 12.5,
                                            backgroundImage: NetworkImage(
                                                'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(2, 5, 4, 0),
                                            child: Text(
                                              'حذيفة',
                                              style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: MyColors.fontcolor,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 5, 2, 0),
                                            child: Text(
                                              '@Hozifah8',
                                              style: const TextStyle(
                                                fontSize: 13,
                                                // fontWeight: FontWeight.normal,
                                                color: Color.fromRGBO(
                                                    134, 133, 133, 1),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 5, 2, 0),
                                            child: Text(
                                              '.23 Jul 16',
                                              style: const TextStyle(
                                                fontSize: 13,
                                                color: Color.fromRGBO(
                                                    134, 133, 133, 1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 4, 4, 4),
                                        child: Text(
                                            textAlign: TextAlign.start,
                                            'How it feels free trial no costs no concquences \n تبقى سايق موتسيكل في الزحمة وموتسيكلات كتيرة وراك بتمشي زي مانت بتمشيي'),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                hoverColor: Colors.red.withOpacity(.3),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('سيتم تحويلك خارج  citio'),
                                    content: const Text(
                                        'هل أنت متأكد بأنك ترغب بالرحيل'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('الغاء'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          launchUrl(_url,
                                              mode: LaunchMode.inAppWebView);
                                        },
                                        child: const Text('نعم'),
                                      ),
                                    ],
                                  ),
                                ),
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: MyColors.themecolor,
                                ),
                              ),
                              Text(
                                '9K',
                                style: TextStyle(
                                    color: Color(0xFF9E9E9E), fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                hoverColor: Colors.green.withOpacity(.3),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('سيتم تحويلك خارج  citio'),
                                    content: const Text(
                                        'هل أنت متأكد بأنك ترغب بالرحيل'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('الغاء'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          launchUrl(_url,
                                              mode: LaunchMode.inAppWebView);
                                        },
                                        child: const Text('نعم'),
                                      ),
                                    ],
                                  ),
                                ),
                                icon: Icon(Icons.comment_outlined,
                                    color: MyColors.themecolor),
                              ),
                              Text(
                                '250',
                                style: TextStyle(
                                    color: Color(0xFF9E9E9E), fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                hoverColor: Colors.blue.withOpacity(.3),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('سيتم تحويلك خارج  citio'),
                                    content: const Text(
                                        'هل أنت متأكد بأنك ترغب بالرحيل'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('الغاء'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          launchUrl(_url,
                                              mode: LaunchMode.inAppWebView);
                                        },
                                        child: const Text('نعم'),
                                      ),
                                    ],
                                  ),
                                ),
                                icon: Icon(Icons.repeat_rounded,
                                    color: MyColors.themecolor),
                              ),
                              Text(
                                '2.7k',
                                style: TextStyle(
                                    color: Color(0xFF9E9E9E), fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          Card(
              color: MyColors.backgroundColor,
              //elevation: 3,
              //shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/media/Gk-mT34WkAAb-zN?format=jpg&name=small'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                          child: Text(
                            'Crucio',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: MyColors.fontcolor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '@averageAlaa',
                            style: const TextStyle(
                              fontSize: 13,
                              // fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '3d',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 45, 8),
                      child: Text(
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          'مفيهاش elevation ولا Shadowcolor\nyou’re dancing…peeta mellark is attempting to kill katniss and you’re dancing…'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: MyColors.themecolor,
                        ),
                        Icon(Icons.comment_outlined,
                            color: MyColors.themecolor),
                        Icon(
                          Icons.repeat_rounded,
                          color: MyColors.themecolor,
                        )
                      ],
                    )
                  ],
                ),
              )),

          Card(
              color: MyColors.backgroundColor,
              elevation: 3,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                                    child: Text(
                                      'حذيفة',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.fontcolor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '@Hozifah8',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        // fontWeight: FontWeight.normal,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                    child: Text(
                                      '.23 Jul 16',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(134, 133, 133, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                                child: Text(
                                    'المالديف دولة مسلمة مهددة بالغرق بسبب التغير المناخي والارتفاع السنوي لمنسوب المياه والسياحة هي مصدر الدخل الاساسي للدولة التي تقوم بشراء اراضي في عدة دول استعدادا لنقل سكانها في المستقبل اذا استمر المنسوب بالارتفاع '),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  hoverColor: Colors.red.withOpacity(.3),
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('سيتم تحويلك خارج  citio'),
                                      content: const Text(
                                          'هل أنت متأكد بأنك ترغب بالرحيل'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('الغاء'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(_url,
                                                mode: LaunchMode.inAppWebView);
                                          },
                                          child: const Text('نعم'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: MyColors.themecolor,
                                  ),
                                ),
                                Text(
                                  '9K',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  hoverColor: Colors.green.withOpacity(.3),
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('سيتم تحويلك خارج  citio'),
                                      content: const Text(
                                          'هل أنت متأكد بأنك ترغب بالرحيل'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('الغاء'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(_url,
                                                mode: LaunchMode.inAppWebView);
                                          },
                                          child: const Text('نعم'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  icon: Icon(Icons.comment_outlined,
                                      color: MyColors.themecolor),
                                ),
                                Text(
                                  '250',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  hoverColor: Colors.blue.withOpacity(.3),
                                  onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title:
                                          const Text('سيتم تحويلك خارج  citio'),
                                      content: const Text(
                                          'هل أنت متأكد بأنك ترغب بالرحيل'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('الغاء'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(_url,
                                                mode: LaunchMode.inAppWebView);
                                          },
                                          child: const Text('نعم'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  icon: Icon(Icons.repeat_rounded,
                                      color: MyColors.themecolor),
                                ),
                                Text(
                                  '2.7k',
                                  style: TextStyle(
                                      color: Color(0xFF9E9E9E), fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          Card(
              color: MyColors.backgroundColor,
              elevation: 3,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/media/GoaFU7IXIAA4lvw?format=jpg&name=small'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                          child: Text(
                            'فريدة',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: MyColors.fontcolor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '@frfrwaalado',
                            style: const TextStyle(
                              fontSize: 13,
                              // fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '2h',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 45, 8),
                      child: Text(
                          textAlign: TextAlign.start,
                          'معارف وناس كبيرة توجهك ويساعدوك Soft skills خصوصا communication skills  ثواب عظيم من اللي بتقدمه ك volunteering activity  بتتعلم ازاي تكون شخص بروفيشنال وازاي تشتغل مع أشخاص مختلفة خصوصا لو شخصياتكم مش متوافقة بتخرج من الcomfort zone القاتلة لكل المواهب والله يمكن اهم حاجة:بتتبسط'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: MyColors.themecolor,
                        ),
                        Icon(Icons.comment_outlined,
                            color: MyColors.themecolor),
                        Icon(
                          Icons.repeat_rounded,
                          color: MyColors.themecolor,
                        )
                      ],
                    )
                  ],
                ),
              )),
          Card(
              color: MyColors.backgroundColor,
              elevation: 3,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/media/GoaFU7IXIAA4lvw?format=jpg&name=small'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                          child: Text(
                            'فريدة',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: MyColors.fontcolor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '@frfrwaalado',
                            style: const TextStyle(
                              fontSize: 13,
                              // fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '2h',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 45, 8),
                      child: Text(textAlign: TextAlign.start, 'Video'),
                    ),
                    Container(
                      // padding: EdgeInsets.fromLTRB(2, 8, 10, 8),
                      margin: EdgeInsets.fromLTRB(15, 8, 45, 8),
                      height: 200,
                      child: _videoPlayerController.value.isInitialized
                          ? VideoPlayer(_videoPlayerController)
                          : Text('failed'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: MyColors.themecolor,
                        ),
                        Icon(Icons.comment_outlined,
                            color: MyColors.themecolor),
                        Icon(
                          Icons.repeat_rounded,
                          color: MyColors.themecolor,
                        )
                      ],
                    )
                  ],
                ),
              )),
          Card(
              color: MyColors.backgroundColor,
              elevation: 6,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                          child: Text(
                            'حذيفة',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: MyColors.fontcolor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '@Hozifah8',
                            style: const TextStyle(
                              fontSize: 13,
                              // fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '.23 Jul 16',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 45, 8),
                      child: Text(
                          textAlign: TextAlign.start, 'ممسوكين في قضية ألعاب'),
                    ),
                    Container(
                      // padding: EdgeInsets.fromLTRB(2, 8, 10, 8),
                      margin: EdgeInsets.fromLTRB(15, 8, 45, 8),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://pbs.twimg.com/media/Goe9yL_X0AASqtI?format=jpg&name=900x900',
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: MyColors.themecolor,
                        ),
                        Icon(Icons.comment_outlined,
                            color: MyColors.themecolor),
                        Icon(
                          Icons.repeat_rounded,
                          color: MyColors.themecolor,
                        )
                      ],
                    )
                  ],
                ),
              )),
          Card(
              color: MyColors.backgroundColor,
              elevation: 6,
              shadowColor: MyColors.themecolor,
              //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
              child: Container(
                padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                          child: Text(
                            'حذيفة',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: MyColors.fontcolor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '@Hozifah8',
                            style: const TextStyle(
                              fontSize: 13,
                              // fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                          child: Text(
                            '.23 Jul 16',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(134, 133, 133, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //            Padding(
                    //            padding: EdgeInsets.fromLTRB(15, 0, 45, 8),
                    //          child: Text(
                    //            textAlign: TextAlign.start,
                    //          'ممسوكين في قضية ألعاب'),
                    //  ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 8, 45, 8),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.none,
                          image: NetworkImage(
                            'https://pbs.twimg.com/media/GohysLoXAAA_Zmj?format=jpg&name=large',
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: MyColors.themecolor,
                        ),
                        Icon(Icons.comment_outlined,
                            color: MyColors.themecolor),
                        Icon(
                          Icons.repeat_rounded,
                          color: MyColors.themecolor,
                        )
                      ],
                    )
                  ],
                ),
              )),
          Card(
            color: MyColors.backgroundColor,
            elevation: 6,
            shadowColor: MyColors.themecolor,
            //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
            child: Container(
              padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                        child: Text(
                          'حذيفة',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: MyColors.fontcolor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                        child: Text(
                          '@Hozifah8',
                          style: const TextStyle(
                            fontSize: 13,
                            // fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(134, 133, 133, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                        child: Text(
                          '.23 Jul 16',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(134, 133, 133, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //            Padding(
                  //            padding: EdgeInsets.fromLTRB(15, 0, 45, 8),
                  //          child: Text(
                  //            textAlign: TextAlign.start,
                  //          'ممسوكين في قضية ألعاب'),
                  //  ),
                  Container(
                    // padding: EdgeInsets.fromLTRB(2, 8, 10, 8),
                    margin: EdgeInsets.fromLTRB(15, 8, 45, 8),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://pbs.twimg.com/media/GohysLoXAAA_Zmj?format=jpg&name=small',
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: MyColors.themecolor,
                      ),
                      Icon(Icons.comment_outlined, color: MyColors.themecolor),
                      Icon(
                        Icons.repeat_rounded,
                        color: MyColors.themecolor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            color: MyColors.backgroundColor,
            elevation: 6,
            shadowColor: MyColors.themecolor,
            //margin: EdgeInsets.fromLTRB(14, 6, 14, 6),
            child: Container(
              padding: EdgeInsets.fromLTRB(7, 7, 7, 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://pbs.twimg.com/profile_images/1880960574491627520/bfxtwwYq_400x400.jpg'),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(2, 5, 4, 0),
                                  child: Text(
                                    'حذيفة',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: MyColors.fontcolor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                  child: Text(
                                    '@Hozifah8',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      // fontWeight: FontWeight.normal,
                                      color: Color.fromRGBO(134, 133, 133, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(2, 5, 2, 0),
                                  child: Text(
                                    '.23 Jul 16',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(134, 133, 133, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                              child: Text(
                                  'المالديف دولة مسلمة مهددة بالغرق بسبب التغير المناخي والارتفاع السنوي لمنسوب المياه والسياحة هي مصدر الدخل الاساسي للدولة التي تقوم بشراء اراضي في عدة دول استعدادا لنقل سكانها في المستقبل اذا استمر المنسوب بالارتفاع '),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width *
                                  9.0 /
                                  16.0,
                              child: VideoPlayer(_videoPlayerController),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(4, 4, 4, 4),
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://pbs.twimg.com/media/GohysLoXAAA_Zmj?format=jpg&name=small',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                hoverColor: Colors.red.withOpacity(.3),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('سيتم تحويلك خارج  citio'),
                                    content: const Text(
                                        'هل أنت متأكد بأنك ترغب بالرحيل'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('الغاء'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          launchUrl(_url,
                                              mode: LaunchMode.inAppWebView);
                                        },
                                        child: const Text('نعم'),
                                      ),
                                    ],
                                  ),
                                ),
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  color: MyColors.themecolor,
                                ),
                              ),
                              Text(
                                '9K',
                                style: TextStyle(
                                    color: Color(0xFF9E9E9E), fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                hoverColor: Colors.green.withOpacity(.3),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('سيتم تحويلك خارج  citio'),
                                    content: const Text(
                                        'هل أنت متأكد بأنك ترغب بالرحيل'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('الغاء'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          launchUrl(_url,
                                              mode: LaunchMode.inAppWebView);
                                        },
                                        child: const Text('نعم'),
                                      ),
                                    ],
                                  ),
                                ),
                                icon: Icon(Icons.comment_outlined,
                                    color: MyColors.themecolor),
                              ),
                              Text(
                                '250',
                                style: TextStyle(
                                    color: Color(0xFF9E9E9E), fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                hoverColor: Colors.blue.withOpacity(.3),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('سيتم تحويلك خارج  citio'),
                                    content: const Text(
                                        'هل أنت متأكد بأنك ترغب بالرحيل'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('الغاء'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          launchUrl(_url,
                                              mode: LaunchMode.inAppWebView);
                                        },
                                        child: const Text('نعم'),
                                      ),
                                    ],
                                  ),
                                ),
                                icon: Icon(Icons.repeat_rounded,
                                    color: MyColors.themecolor),
                              ),
                              Text(
                                '2.7k',
                                style: TextStyle(
                                    color: Color(0xFF9E9E9E), fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
