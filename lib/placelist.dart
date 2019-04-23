import 'package:flutter/material.dart';


class PlacesList extends StatelessWidget {

  List<Monument> places = [
    Monument(name: "India Gate", details: "The India Gate (originally called the All India War Memorial) is a war memorial located astride the Rajpath, on the eastern edge of the ceremonial axis of New Delhi, India[1], formerly called Kingsway.", imageName: "india_gate"),
    Monument(name: "Qutub Minar", details: "The Qutb Minar, also spelled as Qutub Minar, or Qutab Minar, is a minaret that forms part of the Qutb complex, a UNESCO World Heritage Site in the Mehrauli area of Delhi, India.", imageName: "qutub_minar"),
    Monument(name: "Taj Mahal", details: "The Taj Mahal was commissioned by Shah Jahan in 1631, to be built in the memory of his wife Mumtaz Mahal, a Persian princess who died giving birth to their 14th child, Gauhara Begum. Construction started in 1632, and the mausoleum was completed in 1643, while the surrounding buildings and garden were finished five years later.", imageName: "taj_mahal"),
    Monument(name: "Sinhagad", details: "Sinhagad (also known as Sinhgad) is a hill fortress located at around 36 km southwest of the city of Pune, India. Some of the information available at this fort suggests that the fort could have been built 2000 years ago. The caves and the carvings in the Kaundinyeshwar temple stand as proofs for the same.", imageName: "sinhgad"),
    Monument(name: "Golden Temple", details: "The Harmandir Sahib also known as Darbar Sahib, is a Gurdwara Sahib (Sikh temple) located in the city of Amritsar, Punjab, India. It is the holiest Gurdwara and the most important pilgrimage site of Sikhism. It is usually called the Golden Temple in English, because it is plated with gold.", imageName: "golden_temple")
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Cell(
          title: places[index].name,
          subtitle: places[index].details,
          imageName: places[index].imageName,
        );
      },
      itemCount: places.length,
    );
  }
}

class Cell extends StatelessWidget {
  String title;
  String subtitle;
  String imageName;

  Cell({String title, String subtitle, String imageName}) {
    this.title = title;
    this.subtitle = subtitle;
    this.imageName = "images/$imageName.jpg";
    print("Image name is $this.imageName");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Card(
      elevation: 2,
      margin: EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
      child: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign:TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
                    textAlign:TextAlign.left,
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            color: Colors.white,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 90, top: 20, right: 20, bottom: 20),

          ),
          Positioned(
            left: -15,
            child:
            Card(
              child: Container(
                child: Image(
                  image: AssetImage(imageName),
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
              elevation: 5.0,
            ),
          )
        ],
        overflow: Overflow.visible,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}


class Monument {
  String name;
  String details;
  String imageName;

  Monument({String name, String details, String imageName}) {
    this.name = name;
    this.details = details;
    this.imageName = imageName;
  }

}
