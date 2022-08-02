START TRANSACTION;

CREATE TABLE Texts (
    title VARCHAR(50) PRIMARY KEY,
    content TEXT
);

INSERT INTO Texts(title, content) VALUES("ClaudeBerge.text", 
"# Claude Berge

Claude Berge, né le 5 juin 1926 et mort le 30 juin 2002, était un mathématicien et artiste français. 

Sur le plan mathématique, il a été un des créateurs de la théorie des graphes telle que nous la connaissons actuellement, notamment grâce à son livre **Théorie des Graphes et ses Applications** publié en 1958. Il est également l'auteur d'ouvrages majeurs en topologie et en analyse combinatoire, qui seront plus tard traduits en anglais et restent actuellement des références incontournables en ces matières. 

En 1995 le prix Euler lui est décerné — conjointement avec le Professeur R.L. Graham — par l'Institute for Combinatorics.

Sur le plan artistique, il a été l'un des fondateurs de l'OuLiPo en 1960 et est l'auteur d'ouvrages littéraires. Mais il était aussi sculpteur et collectionneur d'arts, notamment d'art asmat de Nouvelle-Guinée.");

INSERT INTO Texts(title, content) VALUES("FrancoisLeLionnais.text", 
"# François Le Lionnais

François Le Lionnais (3 octobre 1901 à Paris - 13 mars 1984 à Boulogne-Billancourt, France) est un ingénieur chimiste mathématicien épris de littérature, doublé d’un écrivain passionné de sciences.

Après une approche professionnelle dans l'industrialisation de la téléphonie automatique, il devint un résistant lyonnais de la première heure (du groupe Front National), puis fut déporté à Dora durant deux ans sur les chaînes de montage des circuits de guidage des fusées V2… parfois « modifiés » par ses soins.

Nommé par la suite Directeur des Études Générales à l'École Supérieure de Guerre, il devint Chef de la Division d'Enseignement et de Diffusion des Sciences à l'UNESCO au début des années 1950.

Célèbre à la fois pour son livre sur les Nombres remarquables et la fondation de l’OuLiPo, ingénieur et chimiste de formation, il fut régent du Collège de ’Pataphysique, grand spécialiste du jeu d'échecs et producteur-animateur d’une émission de radio diffusée régulièrement tout au long des années 60, *La Science en marche* (sur France Culture), alors qu'il est membre du Comité des sciences de la R.T.F.");

INSERT INTO Texts(title, content) VALUES("GeorgesPerec.text",
"# Geroges Perec


**Georges Perec** est un écrivain et verbicruciste français né le 7 mars 1936 à Paris et décédé le 3 mars 1982 à Ivry-sur-Seine (Val-de-Marne). Membre de l'Oulipo à partir de 1967, ses œuvres sont fondées sur l'utilisation de contraintes formelles littéraires ou mathématiques qui marquent son style1.

Georges Perec s'est fait connaître dès son premier roman, *Les Choses*. Une histoire des années soixante (Prix Renaudot 1965) qui restitue l'air du temps à l'orée de la société de consommation. 
Suivent entre autres:
- *Un Homme qui dort*, portrait d'une solitude urbaine
- *La Disparition*, où il reprend aussi son obsession de l'absence douloureuse. Ce premier roman oulipien de Perec est aussi un roman lipogrammatique (il ne comporte aucun « e »)
- *W ou le souvenir d'enfance* qui alterne fiction olympique fascisante et écriture autobiographique fragmentaire.
- *Vie mode d'emploi* (Prix Médicis 1978) dans lequel Georges Perec explore de façon méthodique et contrainte la vie des différents habitants d'un immeuble lui apporte la consécration.");

INSERT INTO Texts(title, content) VALUES("OuLiPo.text",
"# Présentation de l'Oulipo

Ce groupe comprend des écrivains, dont les plus célèbres sont RaymondQueneau, Italo Calvino ou GeorgesPerec, mais aussi des personnalités ayant une double compétence comme le compositeur de mathématique et de poésie Jacques Roubaud ou de (presque) purs mathématiciens comme ClaudeBerge (développeur de la Théorie des graphes). 

Considérant que les contraintes formelles sont un puissant stimulant pour l'imagination, l'Oulipo s'est fixé plusieurs directions de travail :
-un travail synthétique (synthoulipisme), qui consiste en l'invention et l'expérimentation de contraintes littéraires nouvelles, avec éventuellement un exemple de texte pour chaque proposition.
-un travail analytique (anoulipisme), qui consiste en la recherche de ceux qui sont appelés, avec humour, les « plagiaires par anticipation », soit un recensement de tous les écrivains qui ont travaillé avec des contraintes, de façon plus ou moins consciente, avant la création de l'Oulipo.

Les recherches en synthoulipisme constituent la face la plus connue du grand public et surtout la plus spectaculaire. Sont célèbres aujourd'hui par exemple la méthode S plus n (à partir de la « méthode S + 7 » mise au point par Jean Lescure dès 1961), la littérature combinatoire, qui permit à Raymond Queneau d'écrire Cent Mille Milliards de Poèmes mais aussi des poèmes booléens basés sur l' algèbre de Boole ou des « poèmes à métamorphoses pour rubans de Möbius ».");

INSERT INTO Texts(title, content) VALUES("PageAccueil.text",
"# Ouvroir de littérature potentielle

L'**Ouvroir de littérature potentielle**, généralement désigné par son acronyme OuLiPo (ou Oulipo), est un groupe international de littéraires et de mathématiciens se définissant comme des « rats qui construisent eux-mêmes le labyrinthe dont ils se proposent de sortir ». 

On prête cette définition à RaymondQueneau:

L'OuLiPo se définit d'abord par ce qu'il n'est pas :
- Ce n'est pas un mouvement littéraire.
- Ce n'est pas un séminaire scientifique.
- Ce n'est pas de la littérature aléatoire.

## Quelques membres
- GeorgesPerec
- FrancoisLeLionnais
- ClaudeBerge


*Les textes de cet exemple sont tirées d'informations disponibles à partir de [l'article Oulipo de Wikipedia](http://fr.wikipedia.org/wiki/Oulipo)*");

INSERT INTO Texts(title, content) VALUES("RaymondQueneau.text",
"# Raymond Queneau

Raymond Queneau, né au Havre (Seine-Inférieure, aujourd’hui Seine-Maritime) le 21 février 1903 et mort à Paris le 25 octobre 1976, est un romancier, poète, dramaturge français, cofondateur du groupe littéraire OuLiPo.

C’est en 1933 qu’il publie son premier roman, Le Chiendent, qu’il construisit selon ses dires comme une illustration littéraire du Discours de la méthode de René Descartes. Ce roman lui vaudra la reconnaissance de quelques amateurs qui lui décernent le premier prix des Deux-Magots de l'histoire. Suivront quatre romans d’inspiration autobiographique : Les Derniers Jours, Odile, Les Enfants du limon et Chêne et Chien, ce dernier entièrement écrit en vers.

C’est avec *Pierrot mon ami*, paru en 1942, qu’il connaît son premier succès. En 1947 paraît **Exercices de style**, un court récit décliné en une centaine de styles. Ces *Exercices de style* lui furent inspirés par *L’Art de la fugue* de Johann Sebastian Bach, lors d’un concert auquel il avait assisté, en compagnie de son ami Michel Leiris, et qui avait fait naître en lui l’envie de développer différents styles d’écriture.");

COMMIT;