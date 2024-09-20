import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/shared/app_bar.dart';
import 'package:flutter_app/src/presentation/widgets/movieWidget.dart';

class Movie extends StatelessWidget {
  Movie({super.key});

  final List<String> moviesList = <String>[
    'Breaking Bad',
    'Stranger Things',
    'Game of Thrones',
    'Dark'
  ];
  final List<String> imgUrls = <String>[
    'Breaking_Bad.jpeg',
    'Stranger_thing.jpg',
    'GameofThrone.jpg',
    'Dark.jpg',

    // 'https://m.media-amazon.com/images/M/MV5BMTJiMzgwZTktYzZhZC00YzhhLWEzZDUtMGM2NTE4MzQ4NGFmXkEyXkFqcGdeQWpybA@@._V1_.jpg',
    // 'https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABY1lgHLARXhiipGC_8D2x1i4TPMy_k0n-TsE7GJBt96mIXfz4hCYkTmiJhBXH0v_xdr_0Z99muRipunQBBdVq3gjShE8I7LOTtav-2kHnAS6PGAGY9wd9hTC6eORizm85Y62SA.webp?r=c68',
    // 'https://jessjustreads.com/wp-content/uploads/2014/09/GameofThronesBookReview.jpg',
    // 'https://occ-0-8407-2219.1.nflxso.net/dnm/api/v6/9pS1daC2n6UGc3dUogvWIPMR_OU/AAAABdhuMT88XYblZsns_J4s_e76B7jEPFp93Bwc3g4LN9W2Dly9QiRS_vJhYILjnVgXU8qRPhqr5_uW6ie1ECSwNhZABLwKOKGGJafi6q7weJM-2Usl0_NjCCNS.jpg?r=f9c'
  ];
  final SeriesLsit = <Movies>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBar(
        title: 'Popular Tv Series',
        backGroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: moviesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Moviewidget(title: moviesList[index], imgUrl: imgUrls[index]);
        },
      ),
    );
  }
}

class Movies {
  late String name;
  late String imgUrl;
}
