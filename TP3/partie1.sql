CREATE TABLE Client(
    noClient INTEGER PRIMARY KEY,
    nomClient VARCHAR(20),
    noTelephone VARCHAR(20)
)

CREATE TABLE Article(
    noArticle INTEGER PRIMARY KEY,
    despcription VARCHAR(20),
    prixUnitaire DECIMAL(10,2),
    quantiteEnStock INTEGER
)

CREATE TABLE Commande(
    noCommande INTEGER PRIMARY KEY,
    dateCommande DATE,
    noClient INTEGER,
    FOREIGN KEY(noClient) REFERENCES Client(noClient)
)

CREATE TABLE LigneCommande(
    -- noLigneCommande INTEGER PRIMARY KEY,
    noCommande INTEGER,
    noArticle INTEGER,
    quantite INTEGER,
    FOREIGN KEY(noCommande) REFERENCES Commande(noCommande),
    FOREIGN KEY(noArticle) REFERENCES Article(noArticle)
)

CREATE TABLE Livraison(
    noLivraison INTEGER PRIMARY KEY,
    dateLivraison DATE
)


CREATE TABLE DetailLivraison(
    noLivraison INTEGER,
    noArticle INTEGER,
    quantiteLivree INTEGER,
    FOREIGN KEY(noLivraison) REFERENCES Livraison(noLivraison),
    FOREIGN KEY(noArticle) REFERENCES Article(noArticle)
)