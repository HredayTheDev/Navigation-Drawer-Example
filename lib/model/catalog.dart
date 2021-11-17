class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Salman Khan",
        desc: "Bhaijaan",
        price: 1000,
        color: "#33505a",
        image:
            "https://s3.india.com/imageTopics/1a80605417b7daba7d968d8a0200810a.jpg?impolicy=Medium_Widthonly&w=200"),
    Item(
        id: 2,
        name: "Aamir Khan",
        desc: "Mr.Perfectionist",
        price: 1199,
        color: "#33505a",
        image:
            "https://filmfare.wwmindia.com/thumb/content/2021/mar/aamirkhan21614688698.jpg?width=1200&height=900"),
    Item(
        id: 3,
        name: "Shah Rukh Khan",
        desc: "King Khan",
        price: 1299,
        color: "#33505a",
        image:
            "https://images.thequint.com/thequint%2F2018-11%2Fba29008d-9860-46ef-b319-9d12030c51df%2F46118b30_698d_4c08_8f19_23ffac554d35.jpg?rect=0%2C0%2C600%2C338"),
    Item(
        id: 4,
        name: "Akshay Kumar",
        desc: "Khiladi Kumar",
        price: 899,
        color: "#33505a",
        image:
            "https://www.filmibeat.com/img/2021/06/akshay-kumar-1-1623524577.jpg"),
    Item(
        id: 5,
        name: "Hrithik Roshan",
        desc: "Greek God",
        price: 799,
        color: "#33505a",
        image:
            "https://stat2.bollywoodhungama.in/wp-content/uploads/2016/03/Dabboo-Hrithik-00052-copy2368281.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
