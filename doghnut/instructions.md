# Union Square Donuts

![Logo Union Square Donuts](https://cs50.harvard.edu/sql/2024/psets/2/donuts/usq_donuts.webp)

 Le logo de [Union Square Donuts](https://www.unionsquaredonuts.com/about)

## Problème à Résoudre

Autour de Boston, Brookline et Somerville, vous pourriez apercevoir Union Square Donuts, une boutique célèbre dans la région pour ses délicieuses confiseries. Supposons que Union Square Donuts existe depuis un certain temps et, bien que leurs reçus papier aient bien fonctionné jusqu'à présent, ils espèrent un système pour les aider à gérer plus de clients. En fait, ils viennent de vous engager pour concevoir une base de données adaptée à leur boutique. En échange, des donuts gratuits ? 🍩

Dans un fichier nommé `schema.sql` dans un dossier nommé `donuts`, écrivez un ensemble d'instructions SQL pour créer une base de données que Union Square Donuts pourrait utiliser pour gérer ses opérations quotidiennes.

## Spécification

Votre tâche consiste à créer une base de données SQLite pour Union Square Donuts à partir de zéro, en écrivant un ensemble d'instructions `CREATE TABLE` dans un fichier `schema.sql`. Les détails de mise en œuvre dépendent de vous, bien que vous devriez au minimum vous assurer que votre base de données répond aux attentes de l'équipe et qu'elle peut représenter les données d'exemple.

### Attentes

Pour comprendre les attentes de l'équipe concernant leur base de données, vous vous êtes assis pour discuter avec eux après la fermeture de la boutique.

#### Ingredients (Ingrédients)

> Nous devons certainement suivre nos ingrédients. Certains des ingrédients typiques que nous utilisons incluent la farine, la levure, l'huile, le beurre et plusieurs types de sucre différents. De plus, nous aimerions suivre le prix que nous payons par unité d'ingrédient (qu'il s'agisse de livres, de grammes, etc.).

#### Donuts (Beignets)

> Nous devons inclure notre sélection de beignets, passée et présente ! Pour chaque beignet au menu, nous aimerions inclure trois choses :
>
> - Le nom du beignet
> - Si le beignet est sans gluten (gluten-free)
> - Le prix par beignet
>
> Oh, et il est important que nous puissions rechercher les ingrédients de chacun des beignets !

#### Orders (Commandes)

> Nous aimons voir les clients en personne, bien que nous réalisions qu'un bon nombre de personnes pourraient commander en ligne de nos jours. Nous aimerions pouvoir suivre ces commandes en ligne. Nous pensons que nous devrions stocker :
>
> - Un numéro de commande, pour suivre chaque commande en interne
> - Tous les beignets de la commande
> - Le client qui a passé la commande. Nous supposons qu'un seul client passe une commande donnée.

#### Customers (Clients)

> Oh, et nous réalisons qu'il serait agréable de suivre certaines informations sur chacun de nos clients. Nous aimerions nous souvenir de l'historique des commandes qu'ils ont passées. Dans ce cas, nous pensons que nous devrions stocker :
>
> - Le prénom et le nom de famille d'un client
> - Un historique de leurs commandes

### Données d'Exemple

Votre base de données doit pouvoir représenter…

- Le cacao, pour lequel Union Square Donuts paie 5,00 $ la livre.
- Le sucre, pour lequel Union Square Donuts paie 2,00 $ la livre.
- Le beignet "Belgian Dark Chocolate" de Union Square Donuts, qui n'est pas sans gluten, coûte 4,00 $, et comprend les ingrédients suivants :
    - Cacao
    - Farine
    - Babeurre
    - Sucre
- Le beignet "Back-To-School Sprinkles" de Union Square Donuts, qui n'est pas sans gluten, coûte 4,00 $, et comprend les ingrédients suivants :
    - Farine
    - Babeurre
    - Sucre
    - Vermicelles
- Commande 1 de Luis Singh pour 3 beignets Belgian Dark Chocolate et 2 beignets Back-To-School Sprinkles.

## Utilisation

Pour créer une base de données à partir de votre schéma, dans votre dossier `donuts`, tapez

```
sqlite3 donuts.db
```

Cela créera une base de données SQLite vide nommée `donuts.db`.

Ensuite, dans l'invite `sqlite3`, tapez

```
.read schema.sql
```

pour lire les instructions de `schema.sql`.

Rappelez-vous que vous pouvez utiliser `DROP TABLE tablename`, où `tablename` est le nom de votre table, pour supprimer une table de votre base de données.
