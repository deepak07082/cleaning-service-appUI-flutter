class task {
  final String imgpath;
  final String taskname;
  final String bgimgpath;

  task({
    this.imgpath,
    this.taskname,
    this.bgimgpath,
  });

  static List<task> taskk = [
    task(imgpath: "1.svg", taskname: "clean the room", bgimgpath: "1.png"),
    task(
        imgpath: "2.svg",
        taskname: "fix the washing machine",
        bgimgpath: "2.png"),
    task(imgpath: "3.svg", taskname: "watch the dogs", bgimgpath: "3.png"),
    task(imgpath: "1.svg", taskname: "clean the room1", bgimgpath: "4.png"),
  ];
}
