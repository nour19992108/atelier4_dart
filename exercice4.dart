class Media {
  final String titre;

  Media(this.titre);
  void afficherType() {
    print("Ceci est un media generique.");
  }
 }
 class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);
  @override
void afficherType() {
  print("Ceci est un Livre : $titre par $auteur");
}
}

class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);
@override
void afficherType() {
  print("Ceci est un Film : $titre ($dureeMinutes minutes)");
}
}
void main() {
  List<Media> catalogue = [];
catalogue.add(Livre("Le chemin du succès", "Noureddine"));
catalogue.add(Livre("Mon aventure", "Amine"));
catalogue.add(Film("Le grand voyage", 120));
catalogue.add(Film("Mission spéciale", 95));
for (var media in catalogue) {
  media.afficherType();
}
}

