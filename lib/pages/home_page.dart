import 'package:flutter/material.dart';
import 'package:tiktok/pages/icon_widgets.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List items = [
  {
    "videoUrl" : 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
    "name" : "Vannak Niza🦋",
    "caption" : "Morning, everyone!!",
    "songName" : "original sound - Łÿ Pîkâ Ćhûû",
    "profileImg" : "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
    "likes" : "1.5M",
    "comments" : "18.9K",
    "shares" : "80K",
    "albumImg" : "https://images.unsplash.com/photo-1502982899975-893c9cf39028?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  },
  {
    "videoUrl" : 'https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4',
    "name" : "Dara Chamroeun",
    "caption" : "Oops 🙊 #fyp #cambodiatiktok",
    "songName" : "original sound - 💛💛Khantana 🌟",
    "profileImg" : "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png",
    "likes" : "4.4K",
    "comments" : "5.2K",
    "shares" : "100",
    "albumImg" : "https://images.unsplash.com/photo-1462804512123-465343c607ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
  },
  {
    "videoUrl" : 'https://nickdesaulniers.github.io/netfix/demo/frag_bunny.mp4',
    "name" : "9999womenfashion",
    "caption" : "#블루모드",
    "songName" : "original sound - 🖤Khün MÄk🇰🇭",
    "profileImg" : "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1664576339652610.jpeg",
    "likes" : "100K",
    "comments" : "10K",
    "shares" : "8.5K",
    "albumImg" : "https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
  },
   {
    "videoUrl" : 'http://baishan.oversketch.com/2019/11/05/d07f2f1440e51b9680f4bcfe63b0ab67.MP4',
    "name" : "Vannak Niza🦋",
    "caption" : "Morning, everyone!!",
    "songName" : "original sound - Łÿ Pîkâ Ćhûû",
    "profileImg" : "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
    "likes" : "1.5M",
    "comments" : "18.9K",
    "shares" : "80K",
    "albumImg" : "https://images.unsplash.com/photo-1502982899975-893c9cf39028?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  },
  {
    "videoUrl" : 'http://baishan.oversketch.com/2020/05/14/32f5e6da40947c9880598b4d8b3671f4.MP4',
    "name" : "Dara Chamroeun",
    "caption" : "Oops 🙊 #fyp #cambodiatiktok",
    "songName" : "original sound - 💛💛Khantana 🌟",
    "profileImg" : "https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png",
    "likes" : "4.4K",
    "comments" : "5.2K",
    "shares" : "100",
    "albumImg" : "https://images.unsplash.com/photo-1462804512123-465343c607ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
  },
  {
    "videoUrl" : 'http://baishan.oversketch.com/2020/05/14/55eae3664003437b80a159a9f2369474.MP4',
    "name" : "9999womenfashion",
    "caption" : "#블루모드",
    "songName" : "original sound - 🖤Khün MÄk🇰🇭",
    "profileImg" : "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1664576339652610.jpeg",
    "likes" : "100K",
    "comments" : "10K",
    "shares" : "8.5K",
    "albumImg" : "https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
  },
 
];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return RotatedBox(
      quarterTurns: 1,
      child: TabBarView(
          controller: _tabController,
          children: List.generate(items.length, (index) {
            return RotatedBox(
              quarterTurns: -1,
              child: VideoPlayerItem(
                size: size,
                name: items[index]["name"],
                videoUrl: items[index]["videoUrl"],
                caption: items[index]["caption"],
                songName: items[index]["songName"],
                profileImg:items[index]["profileImg"],
                likes: items[index]["likes"],
                shares: items[index]["shares"],
                comments: items[index]["comments"],
                albumImg:items[index]["albumImg"],
              ),
            );
          })),
    );
  }
}

class VideoPlayerItem extends StatefulWidget {
  final String name;
  final String videoUrl;
  final String caption;
  final String songName;
  final String profileImg;
  final String likes;
  final String shares;
  final String comments;
  final String albumImg;

  const VideoPlayerItem({
    Key key,
    @required this.size,
    this.name,
    this.caption,
    this.songName,
    this.profileImg,
    this.likes,
    this.shares,
    this.comments,
    this.albumImg,
    this.videoUrl,
  }) : super(key: key);

  final Size size;

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem>
    with SingleTickerProviderStateMixin {
  VideoPlayerController _videoPlayerController;
  bool isShowingPlay = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl, useCache: true)
      ..initialize().then((value) {
        _videoPlayerController.play();
        setState(() {
          isShowingPlay = false;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _videoPlayerController.value.isPlaying
              ? _videoPlayerController.pause()
              : _videoPlayerController.play();
        });
      },
      child: Container(
          width: widget.size.width,
          height: widget.size.height,
          child: Stack(
            children: [
              Container(
                width: widget.size.width,
                height: widget.size.height,
                child: Stack(
                  children: [
                    VideoPlayer(_videoPlayerController),
                    _videoPlayerController.value.isPlaying
                        ? Container()
                        : Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 80,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          )
                  ],
                ),
              ),
              Container(
                width: widget.size.width,
                height: widget.size.height,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 25, right: 15, left: 15, bottom: 10),
                    child: Column(
                      children: [
                        HeaderHome(),
                        Flexible(
                          child: Row(
                            children: [
                              LeftPanel(
                                size: widget.size,
                                name: widget.name,
                                caption: widget.caption,
                                songName: widget.songName,
                              ),
                              RightPanel(
                                size: widget.size,
                                profileImg: widget.profileImg,
                                likes: widget.likes,
                                comments: widget.comments,
                                shares: widget.shares,
                                albumImg: widget.albumImg,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class RightPanel extends StatelessWidget {
  final String profileImg;
  final String likes;
  final comments;
  final String shares;
  final String albumImg;

  const RightPanel({
    Key key,
    @required this.size,
    this.profileImg,
    this.likes,
    this.comments,
    this.shares,
    this.albumImg,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
              height: size.height * 0.3,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getProfile(profileImg),
                    getIcon(Icons.headset, 35.0, likes),
                    getIcon(Icons.chat, 35.0, comments),
                    getIcon(Icons.repeat, 25.0, shares),
                    getAlbum(albumImg),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeftPanel extends StatelessWidget {
  final String name;
  final String caption;
  final String songName;
  const LeftPanel({
    Key key,
    @required this.size,
    this.name,
    this.caption,
    this.songName,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width * 0.78,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.music_note,
                color: Colors.white,
                size: 15,
              ),
              Text(
                songName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Following",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "|",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "For you",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
