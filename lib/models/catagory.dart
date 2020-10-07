class catagory {
  final String img;
  final String name;
  final String roundimg;
  final String roundimg2;

  catagory({
    this.img,
    this.name,
    this.roundimg,
    this.roundimg2,
  });
  static List<catagory> catagory1 = [
    catagory(
        img: "c1.jpeg",
        name: "Room Cleaning",
        roundimg: "f2.jpeg",
        roundimg2: "f3.jpeg"),
    catagory(
        img: "c2.jpeg",
        name: "house Cleaning",
        roundimg: "f1.jpeg",
        roundimg2: "f3.jpeg"),
    catagory(
        img: "c3.jpeg",
        name: "office Cleaning",
        roundimg: "f1.jpeg",
        roundimg2: "f2.jpeg"),
    catagory(
        img: "c1.jpeg",
        name: "other Cleaning",
        roundimg: "f2.jpeg",
        roundimg2: "f3.jpeg"),
  ];
}
