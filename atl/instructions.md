# ATL

![Vue aérienne de l'aéroport international Hartsfield-Jackson](https://cs50.harvard.edu/sql/2024/psets/2/atl/atl.jpeg)

## Problème à Résoudre

L'aéroport international Hartsfield-Jackson, plus connu sous le nom de "ATL" pour son code IATA, est le plus fréquenté au monde depuis 1998. Situé à Atlanta, en Géorgie, aux États-Unis, ATL a desservi 93,7 millions de passagers en 2022. 

Imaginons que vous venez d'être embauché pour aider ATL à restructurer leur système de base de données. Dans un fichier nommé `schema.sql` dans un dossier appelé `atl`, écrivez un ensemble d'instructions SQL pour concevoir une base de données permettant à Hartsfield-Jackson de suivre ses passagers et leurs vols.

Tapez ce qui suit dans votre terminal :

```bash
mkdir atl # crée un dossier vide 
```

Notez que le dossier `atl` sera créé dans le "working directory" de votre terminal (c'est-à-dire le dossier sur lequel votre terminal est actuellement concentré). Si votre working directory est déjà un dossier nommé `pset2`, par exemple, `atl` sera créé à l'intérieur du dossier `pset2`. (Pas besoin de créer un tel dossier `pset2` !)

Une fois que vous avez créé le dossier `atl`, vous pouvez taper ce qui suit pour changer le working directory de votre terminal vers le dossier `atl` :

```bash
cd atl # se déplace dans le dossier atl
```

Ensuite, tapez 

```bash
touch schema.sql
```

 pour créer un fichier `schema.sql` vierge.

Pour vous souvenir de `mkdir` à l'avenir, rappelez-vous que `mkdir` signifie "make directory" !

## Spécification

Votre tâche est de créer une base de données SQLite pour ATL à partir de zéro, en écrivant un ensemble d'instructions `CREATE TABLE` dans un fichier `schema.sql`. Les détails de mise en œuvre dépendent de vous, bien que vous devriez au minimum vous assurer que votre base de données répond aux exigences de l'aéroport et qu'elle peut représenter les données d'échantillon fournies.

### Exigences

Pour comprendre les exigences d'ATL pour leur base de données, vous vous êtes assis pour discuter avec l'Assistant General Manager for IT Operations.

#### Passagers

> En ce qui concerne nos passagers, nous devons juste avoir les informations essentielles : le prénom, le nom de famille et l'âge. C'est tout ce que nous devons savoir — rien de plus.

#### Enregistrements

> Lorsque les passagers arrivent à ATL, ils "s'enregistrent" souvent pour leurs vols. C'est leur façon de nous dire qu'ils sont là et prêts à embarquer. Nous aimerions garder une trace de ces moments. Et de quoi avons-nous besoin pour cela, demandez-vous ? Eh bien, voici ce dont nous avons besoin :
>
> - La date et l'heure exactes auxquelles notre passager s'est enregistré
> - Le vol pour lequel ils s'enregistrent, bien sûr. On ne peut pas perdre de vue où ils se dirigent, n'est-ce pas ?

#### Compagnies Aériennes

> ATL est un hub pour de nombreuses compagnies aériennes nationales et internationales : des noms comme Delta, British Airways, Air France, Korean Air, et Turkish Airlines. La liste est longue. Voici ce que nous suivons :
>
> - Le nom de la compagnie aérienne
> - La "jetée" ou, devrais-je dire, la section de notre aéroport où la compagnie aérienne opère. Nous avons 7 jetées : A, B, C, D, E, F, et T.

#### Vols

> Nous desservons jusqu'à 1 000 vols par jour. Pour nous assurer que nos passagers ne se posent jamais de questions, nous devons leur fournir tous les détails critiques sur leur vol. Voici ce que nous aimerions stocker :
>
> - Le numéro de vol. Par exemple, "900". Sachez juste que nous réutilisons parfois les numéros de vol.
> - La compagnie aérienne opérant le vol. Vous pouvez garder cela simple et supposer qu'un vol est opéré par une seule compagnie aérienne.
> - Le code de l'aéroport de départ. Par exemple, "ATL" ou "BOS".
> - Le code de l'aéroport de destination
> - La date et l'heure de départ prévues (à la minute près, bien sûr !)
> - La date et l'heure d'arrivée prévues, avec la même précision

### Données d'Échantillon

Votre base de données doit pouvoir représenter...

- Un passager, Amelia Earhart, âgée de 39 ans
- Une compagnie aérienne, Delta, qui opère à partir des jetées A, B, C, D, et T
- Un vol, Delta Flight 300, qui est prévu de partir d'ATL le 3 août 2023 à 18h46 et d'arriver à BOS le 3 août 2023 à 21h09
- Un enregistrement pour Amelia Earhart, pour le vol Delta 300, le 3 août 2023 à 15h03

## Utilisation

Pour créer une base de données à partir de votre schéma, dans votre dossier `atl`, tapez

```
sqlite3 atl.db
```

Cela créera une base de données SQLite vide appelée `atl.db`.

Ensuite, dans l'invite `sqlite3`, tapez

```
.read schema.sql
```

pour lire les instructions de `schema.sql`.



Rappelez-vous que vous pouvez utiliser `DROP TABLE tablename`, où `tablename` est le nom de votre table, pour supprimer une table de votre base de données.

## Import de fichier csv dans la base de données SQL

Vous avez des fichiers CSV (airlines.csv, check_ins.csv, flights.csv, passengers.csv) que vous pouvez importer dans la base de données SQLite que vous avez créée.

Pour importer ces fichiers CSV dans la base de données SQLite, vous pouvez utiliser la commande suivante dans l'invite `sqlite3` :

```
.import --csv file_name table_name
```

Par exemple :
```
.import --csv passengers.csv passengers
.import --csv airlines.csv airlines
.import --csv flights.csv flights
.import --csv check_ins.csv check_ins
```

Vous pouvez exécuter ces commandes après avoir créé votre schéma de base de données avec `.read schema.sql`.

Rappel en français : Vous pouvez importer les données CSV avec la commande `.import --csv nom_du_fichier nom_de_la_table` après avoir créé votre schéma de base de données.