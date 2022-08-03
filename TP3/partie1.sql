-- 1. Créer les tables Client, Commande, Article, LigneCommande, Livraison, DétailLivraison
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

-- 2. Déterminer les noArticles commandés au moins une fois par le Client #10 après le 01/06/2000. 
SELECT noArticle, quantiteLivree 
FROM DetailLivraison, Livraison 
WHERE Livraison.noLivraison = DetailLivraison.noLivraison AND Livraison.dateLivraison > '2000-06-01' AND Client.noClient = 10

-- 3. Déterminer les noCommandes des Commandes qui ont été placées à la même date que la Commande #2.
SELECT noCommande 
FROM Commande 
WHERE dateCommande = (SELECT dateCommande FROM Commande WHERE noCommande = 2)

-- 4. Trouver la liste des noCommande avec les noLivraisons associées incluant les noCommandes sans livraison. 
SELECT noCommande, noLivraison FROM Commande LEFT JOIN Livraison ON Commande.noCommande = Livraison.noCommande

-- 5. Déterminer les noClient, nomClient des Clients qui n’ont pas placé de Commande au mois de mars de l’année 2000. 
SELECT noClient, nomClient FROM Client LEFT JOIN Commande ON Client.noClient = Commande.noClient WHERE dateCommande NOT LIKE '2000-03-%'

-- 6. Déterminer les noArticles qui apparaissent dans toutes les Commandes du Client #10. 
SELECT noArticle FROM LigneCommande WHERE noCommande IN (SELECT noCommande FROM Commande WHERE noClient = 10)

-- 7. Déterminer les Articles dont le prix est supérieur à la moyenne. 
SELECT noArticle, prixUnitaire FROM Article WHERE prixUnitaire > (SELECT AVG(prixUnitaire) FROM Article)

-- 8. Déterminer la quantité commandée et quantité en attente pour chaque LigneCommande dont la quantité en attente est supérieur à 0.
SELECT noArticle, quantite, quantiteEnAttente FROM LigneCommande WHERE quantiteEnAttente > 0