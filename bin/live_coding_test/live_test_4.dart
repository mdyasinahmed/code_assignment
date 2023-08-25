// Created Base Class(Media)
class Media {
  // Method of Base Class
  void play() {
    print('Playing media...');
  }
}

// Song class inherits from the Media class
class Song extends Media {
  // additional attribute
  String artist;
  Song(this.artist);

  // overriding play() method
  @override
  void play() {
    print('Playing song by $artist...');
  }
}

// main method
void main() {
  // Instance of Media and Song class
  Media insMedia = Media();
  Song insSong = Song('Tahsan Khan');

  // Calling play() methods
  insMedia.play();
  insSong.play();
}
