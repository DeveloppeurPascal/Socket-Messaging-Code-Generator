# 20240307 - [DeveloppeurPascal](https://github.com/DeveloppeurPascal)

* mise à jour des dépendances (librairies et socket messaging librairie)
* ajout de FMXExtend comme sous module (pour le sélecteur de dossiers)
* mise à jour des dépendances dans la doc FR/EN
* remplacement du choix du fichier d'export par un choix de dossier dans lequel exporter l'unité
* ajout d'une case à cocher et de son traitement pour que les champs de type class puissent être libérés sur le Destroy de leur message
* déplacement du projet "Test-Project" dans un sous dossier "samples" pour garder l'arborescence du dépôt cohérente avec les autres
* suppression de la génération de la variable "msg" dans les évènements onReceiveMessageXXX car elle ne servait pas et générait un avertissement à la compilation
* (dé)cochage automatique du "is a class, free needed" selon le type de load/save choisi (coché quand TBitmap ou class, décoché si sizeof ou string)
* rapprochement de la case à cocher "is a class" du type de load/save selon le type de champ
* suppression des textes "licence" et "description" de la boite de dialogue "à propos" pour les remplacer dans le code source.
* ajout d'un texte de "licence shareware" en anglais à partir de celui utilisé dans HTML Writer.
* ajout d'une description du projet avec informations sur les données traitées et l'éditeur en s'inspirant du pavé utilisé dans Fie Frapic.
* tentative infructueuse de correction de l'anomalie #50 : champs de saisie "name" des messages et champs d'un message ne s'affichent pas de temps en temps après ouverture d'un projet existant alors que le reste de l'écran est correctement affiché. Ca semble lié aux SetFocus envoyés en ForceQueue. Sans tout est ok, avec l'anomalie apparaît. Des tests à faire plus tard. Peut-être un ticket à soumettre à EMB.
* ajout de 3 champs complémentaires pour lister des unités dépendant des définitions conditionnelles CONSOLE, FRAMEWORK_VCL et FRAMEWORK_FMX
* déploiement de la version 1.1 du 2024-03-07 pour Mac et Windows (hors stream)
