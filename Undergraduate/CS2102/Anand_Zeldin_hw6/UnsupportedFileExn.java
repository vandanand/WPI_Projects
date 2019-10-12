class UnsupportedFileExn extends Exception {
  String filename;
  
  UnsupportedFileExn(String filename){
    this.filename = filename;
  }
}