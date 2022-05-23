class ImageKitter {
  static String setBlur({required int blur, required String defualtString}) {
    var splitter = defualtString.split("/o/");
   return splitter[1].startsWith("tr:")
        ? splitter[1].split("/")[0].contains("bl-")
            ? splitter[0] +
                "/o/" +
                splitter[1]
                    .split("/")[0]
                    .replaceFirst(RegExp(r'bl-[0-9]'), 'bl-$blur') +
                "/" +
                splitter[1].split("/")[1]
            : splitter[0] +
                (splitter[1].split("/")[0] +
                    "bl-$blur/" +
                    splitter[1].split("/")[1])
        : splitter[0] + "/o/tr:bl-$blur/" + splitter[1];
  }
  
}
