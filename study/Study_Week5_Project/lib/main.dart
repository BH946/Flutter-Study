import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var dataList = [{"adult":false,"backdrop_path":"/s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg","genre_ids":[878,12,28],"id":76600,"original_language":"en","original_title":"Avatar: The Way of Water","overview":"Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.","popularity":6516.443,"poster_path":"/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg","release_date":"2022-12-14","title":"Avatar: The Way of Water","video":false,"vote_average":7.7,"vote_count":3343},{"adult":false,"backdrop_path":"/dKqa850uvbNSCaQCV4Im1XlzEtQ.jpg","genre_ids":[9648,53,35],"id":661374,"original_language":"en","original_title":"Glass Onion: A Knives Out Mystery","overview":"World-famous detective Benoit Blanc heads to Greece to peel back the layers of a mystery surrounding a tech billionaire and his eclectic crew of friends.","popularity":6801.729,"poster_path":"/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg","release_date":"2022-11-23","title":"Glass Onion: A Knives Out Mystery","video":false,"vote_average":7.1,"vote_count":1868},{"adult":false,"backdrop_path":"/6mEYUYdkKoVCMeYf3rTFj0L1uyv.jpg","genre_ids":[28,35,80,53],"id":899112,"original_language":"en","original_title":"Violent Night","overview":"When a team of mercenaries breaks into a wealthy family compound on Christmas Eve, taking everyone inside hostage, the team isn’t prepared for a surprise combatant: Santa Claus is on the grounds, and he’s about to show why this Nick is no saint.","popularity":5267.458,"poster_path":"/1XSYOP0JjjyMz1irihvWywro82r.jpg","release_date":"2022-11-30","title":"Violent Night","video":false,"vote_average":7.7,"vote_count":715},{"adult":false,"backdrop_path":"/tuDhEdza074bA497bO9WFEPs6O6.jpg","genre_ids":[12,10751,14],"id":411,"original_language":"en","original_title":"The Chronicles of Narnia: The Lion, the Witch and the Wardrobe","overview":"Siblings Lucy, Edmund, Susan and Peter step through a magical wardrobe and find the land of Narnia. There, they discover a charming, once peaceful kingdom that has been plunged into eternal winter by the evil White Witch, Jadis. Aided by the wise and magnificent lion, Aslan, the children lead Narnia into a spectacular, climactic battle to be free of the Witch's glacial powers forever.","popularity":3548.498,"poster_path":"/iREd0rNCjYdf5Ar0vfaW32yrkm.jpg","release_date":"2005-12-07","title":"The Chronicles of Narnia: The Lion, the Witch and the Wardrobe","video":false,"vote_average":7.1,"vote_count":9073},{"adult":false,"backdrop_path":"/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg","genre_ids":[28,14,878],"id":436270,"original_language":"en","original_title":"Black Adam","overview":"Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.","popularity":3794.099,"poster_path":"/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg","release_date":"2022-10-19","title":"Black Adam","video":false,"vote_average":7.2,"vote_count":3443},{"adult":false,"backdrop_path":"/o0s4XsEDfDlvit5pDRKjzXR4pp2.jpg","genre_ids":[28,12,14,878],"id":19995,"original_language":"en","original_title":"Avatar","overview":"In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.","popularity":3539.663,"poster_path":"/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg","release_date":"2009-12-15","title":"Avatar","video":false,"vote_average":7.6,"vote_count":27444},{"adult":false,"backdrop_path":"/53BC9F2tpZnsGno2cLhzvGprDYS.jpg","genre_ids":[14,28,12],"id":736526,"original_language":"no","original_title":"Troll","overview":"Deep inside the mountain of Dovre, something gigantic awakens after being trapped for a thousand years. Destroying everything in its path, the creature is fast approaching the capital of Norway. But how do you stop something you thought only existed in Norwegian folklore?","popularity":3496.047,"poster_path":"/9z4jRr43JdtU66P0iy8h18OyLql.jpg","release_date":"2022-12-01","title":"Troll","video":false,"vote_average":6.7,"vote_count":899},{"adult":false,"backdrop_path":"/rodjjIJ8oh9nuBp86PhojcYHTEN.jpg","genre_ids":[28,53,80,18],"id":740952,"original_language":"en","original_title":"Savage Salvation","overview":"Newly engaged Shelby John and Ruby Red want a fresh start after their struggles with addiction, but when Shelby discovers his beloved Ruby dead on their porch, he embarks on a vengeful killing spree of the dealers who supplied her. Armed with nothing but adrenaline and a nail gun, Shelby begins to unleash chaos on the town’s criminal underbelly, as he hunt’s down crime lord Coyote. Sheriff Church must race against the clock to put an end to Shelby's vigilante justice before the entire town descends into a bloodbath.","popularity":2464.696,"poster_path":"/fJRt3mmZEvf8gQzoNLzjPtWpc9o.jpg","release_date":"2022-12-02","title":"Savage Salvation","video":false,"vote_average":5.3,"vote_count":20},{"adult":false,"backdrop_path":"/7zQJYV02yehWrQN6NjKsBorqUUS.jpg","genre_ids":[28,18,36],"id":724495,"original_language":"en","original_title":"The Woman King","overview":"The story of the Agojie, the all-female unit of warriors who protected the African Kingdom of Dahomey in the 1800s with skills and a fierceness unlike anything the world has ever seen, and General Nanisca as she trains the next generation of recruits and readies them for battle against an enemy determined to destroy their way of life.","popularity":2497.876,"poster_path":"/438QXt1E3WJWb3PqNniK0tAE5c1.jpg","release_date":"2022-09-15","title":"The Woman King","video":false,"vote_average":7.8,"vote_count":922},{"adult":false,"backdrop_path":"/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg","genre_ids":[28,12,878],"id":505642,"original_language":"en","original_title":"Black Panther: Wakanda Forever","overview":"Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.","popularity":1829.439,"poster_path":"/sv1xJUazXeYqALzczSZ3O6nkH75.jpg","release_date":"2022-11-09","title":"Black Panther: Wakanda Forever","video":false,"vote_average":7.5,"vote_count":1534},{"adult":false,"backdrop_path":"/7dm64SW5L5CCg47kAEAcdCGaq5i.jpg","genre_ids":[27,53],"id":676547,"original_language":"en","original_title":"Prey for the Devil","overview":"In response to a global rise in demonic possessions, the Catholic Church reopens exorcism schools to train priests in the Rite of Exorcism. On this spiritual battlefield, an unlikely warrior rises: a young nun, Sister Ann. Thrust onto the spiritual frontline with fellow student Father Dante, Sister Ann finds herself in a battle for the soul of a young girl and soon realizes the Devil has her right where he wants her.","popularity":2094.124,"poster_path":"/w3s6XEDNVGq5LUlghqs6VlvsvL6.jpg","release_date":"2022-10-23","title":"Prey for the Devil","video":false,"vote_average":7.2,"vote_count":279},{"adult":false,"backdrop_path":"/5wDBVictj4wUYZ31gR5WzCM9dLD.jpg","genre_ids":[16,878,12,10751],"id":877269,"original_language":"en","original_title":"Strange World","overview":"A journey deep into an uncharted and treacherous land, where fantastical creatures await the legendary Clades—a family of explorers whose differences threaten to topple their latest, and by far most crucial, mission.","popularity":2049.082,"poster_path":"/aBsZlk7npOMWbaUfVeMu7xCnoRx.jpg","release_date":"2022-11-23","title":"Strange World","video":false,"vote_average":6.5,"vote_count":375},{"adult":false,"backdrop_path":"/ecaB1LUoQE1ylZJVF5KLRTkewt8.jpg","genre_ids":[28,35,80],"id":683328,"original_language":"id","original_title":"The Big 4","overview":"A by-the-book female detective teams up with four down-on-their-luck assassins to investigate her father's murder.","popularity":2221.28,"poster_path":"/jrw684BhFJZ9Jac6KJda3hSQkxt.jpg","release_date":"2022-12-19","title":"The Big 4","video":false,"vote_average":6.8,"vote_count":60},{"adult":false,"backdrop_path":"/mYQSbZdGX0JJb49NLO04UA0iFEU.jpg","genre_ids":[28,35,80],"id":1015963,"original_language":"en","original_title":"High Heat","overview":"When the local mafia shows up to burn down her restaurant, Ana, a chef with a meticulous past, defends her turf and proves her knife skills both in and out of the kitchen.","popularity":2449.383,"poster_path":"/mmD0NVdhiRiCu64YKem5GK5PSfy.jpg","release_date":"2022-12-16","title":"High Heat","video":false,"vote_average":5.3,"vote_count":15},{"adult":false,"backdrop_path":"/6YRQ8l93ZEs6x4rZojWoHIWdguK.jpg","genre_ids":[28,80],"id":1024546,"original_language":"en","original_title":"Detective Knight: Rogue","overview":"As Los Angeles prepares for Halloween, mask-wearing armed robbers critically wound detective James Knight’s partner in a shootout following a heist. With Knight in hot pursuit, the bandits flee L.A. for New York, where the detective’s dark past collides with his present case and threatens to tear his world apart…unless redemption can claim Knight first.","popularity":1662.874,"poster_path":"/2wj5iUJ2B5AQ1lFctJgUrHHsp9B.jpg","release_date":"2022-10-21","title":"Detective Knight: Rogue","video":false,"vote_average":5.9,"vote_count":31},{"adult":false,"backdrop_path":"/2JeIqOdSM5nC1SQmuhUOfj3iB1U.jpg","genre_ids":[16,14,18],"id":555604,"original_language":"en","original_title":"Guillermo del Toro's Pinocchio","overview":"During the rise of fascism in Mussolini's Italy, a wooden boy brought magically to life struggles to live up to his father's expectations.","popularity":1795.442,"poster_path":"/vx1u0uwxdlhV2MUzj4VlcMB0N6m.jpg","release_date":"2022-11-09","title":"Guillermo del Toro's Pinocchio","video":false,"vote_average":8.4,"vote_count":1291},{"adult":false,"backdrop_path":"/edOt2jNyCbb8SQSvulD2sRRJhmA.jpg","genre_ids":[28,80,53],"id":873126,"original_language":"it","original_title":"Il mio nome è vendetta","overview":"After old enemies kill his family, a former mafia enforcer and his feisty daughter flee to Milan, where they hide out while plotting their revenge.","popularity":1825.402,"poster_path":"/7l3war94J4tRyWUiLAGokr3ViF2.jpg","release_date":"2022-11-30","title":"My Name Is Vendetta","video":false,"vote_average":6.7,"vote_count":261},{"adult":false,"backdrop_path":"/qdFrqXYH6PtyAVlegub7bpoSgro.jpg","genre_ids":[16,12,35],"id":573171,"original_language":"es","original_title":"Huevitos Congelados","overview":"The rooster Toto has a new enemy: a pirate who plans to turn him into a cryogenically frozen rooster.","popularity":1658.639,"poster_path":"/gBBCBMXKzWRADtliUYfV69aVIcz.jpg","release_date":"2022-12-14","title":"A Frozen Rooster","video":false,"vote_average":8.3,"vote_count":140},{"adult":false,"backdrop_path":"/r9PkFnRUIthgBp2JZZzD380MWZy.jpg","genre_ids":[16,12,35,10751,14],"id":315162,"original_language":"en","original_title":"Puss in Boots: The Last Wish","overview":"Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.","popularity":1546.787,"poster_path":"/lmf0zzR7ritjOL3qumRh3hfvOFK.jpg","release_date":"2022-12-07","title":"Puss in Boots: The Last Wish","video":false,"vote_average":8,"vote_count":161},{"adult":false,"backdrop_path":"/kmzppWh7ljL6K9fXW72bPN3gKwu.jpg","genre_ids":[14,28,35,80],"id":1013860,"original_language":"en","original_title":"R.I.P.D. 2: Rise of the Damned","overview":"When Sheriff Roy Pulsipher finds himself in the afterlife, he joins a special police force and returns to Earth to save humanity from the undead.","popularity":1577.016,"poster_path":"/g4yJTzMtOBUTAR2Qnmj8TYIcFVq.jpg","release_date":"2022-11-15","title":"R.I.P.D. 2: Rise of the Damned","video":false,"vote_average":6.6,"vote_count":294}];

void main() {
  runApp(MaterialApp(
    title: 'Movie App',
    home: FirstRoute(), // home에 첫페이지
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0 ; i<dataList.length; i++)
          Card(child: ListTile(
            leading: Image.network('https://image.tmdb.org/t/p/w500'+dataList[i]['poster_path'].toString()),
            title: Text(dataList[i]['title'].toString()),
            subtitle: Text(dataList[i]['overview'].toString()),
            onTap: () { 
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>SecondRoute(dataList[i]['id'].toString())
                  )
                );
              },
            ),
          )
        ]
      ),
    ));
  }
}

class SecondRoute extends StatelessWidget {
  String id;
  SecondRoute(this.id, {Key? key}) : super(key: key); // 생성자
  // this.id로 생성자 인수에 적어두면, id변수에 바로 매핑시켜서 저장

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(int i = 0 ; i<dataList.length; i++)
            if(dataList[i]['id'].toString() == id)
            Column(
              children: [
                Image.network('https://image.tmdb.org/t/p/w500'+dataList[i]['poster_path'].toString()),
                Text(dataList[i]['title'].toString(), 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                Text('\n'+dataList[i]['overview'].toString()+'\n'),
                Row(children: [
                  Text('출시날짜 : '+dataList[i]['release_date'].toString()),
                  Text('    평점 : '+dataList[i]['vote_average'].toString()),
                  Text('    총 투표수 : '+dataList[i]['vote_count'].toString()),
                ],)
              ],
            )
          ],
          // onPressed: () {
          //   Navigator.pop(context);
          // },
        ),
      ),
    );
  }
}