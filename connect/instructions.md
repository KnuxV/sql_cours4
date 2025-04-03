# Happy to connect

![Logo LinkedIn](https://cs50.harvard.edu/sql/2024/psets/2/connect/linkedin.png)

## Problème à Résoudre

LinkedIn est « le plus grand réseau professionnel au monde » avec pour mission de « connecter les professionnels du monde entier pour les rendre plus productifs et plus performants ». Peut-être avez-vous un compte ? Sur la plateforme, les utilisateurs peuvent publier leur expérience professionnelle (c'est-à-dire, les emplois précédents, l'éducation, etc.) et établir des connexions avec d'autres personnes qu'ils ont rencontrées, en personne ou en ligne.

Dans un fichier nommé `schema.sql` dans un dossier nommé `connect`, écrivez un ensemble d'instructions SQL pour concevoir une base de données que LinkedIn pourrait utiliser.

## Spécification

Votre tâche consiste à créer une base de données SQLite pour LinkedIn à partir de zéro, en écrivant un ensemble d'instructions `CREATE TABLE` dans un fichier `schema.sql`. Les détails de mise en œuvre dépendent de vous, bien que vous devriez au minimum vous assurer que votre base de données répond aux spécifications de la plateforme et qu'elle peut représenter les données d'exemple fournies.

### Plateforme

#### Utilisateurs

Le cœur de la plateforme LinkedIn est ses utilisateurs. Votre base de données doit pouvoir représenter les informations suivantes sur les utilisateurs de LinkedIn :

- Leur prénom et nom de famille
- Leur nom d'utilisateur
- Leur mot de passe

Gardez à l'esprit que, si une entreprise suit les meilleures pratiques, les mots de passe des applications sont « hachés ». Pas besoin de vous soucier du hachage des mots de passe ici, cependant.

#### Écoles et Universités

LinkedIn permet également des comptes officiels pour les écoles ou universités, comme celui de Harvard, afin que les anciens élèves (c'est-à-dire, ceux qui y ont étudié) puissent identifier leur affiliation. Assurez-vous que la base de données de LinkedIn peut stocker les informations suivantes sur chaque école :

- Le nom de l'école
- Le type d'école (par exemple, « École Élémentaire », « Collège », « Lycée », « École Primaire », « École Secondaire », « Université », etc.)
- L'emplacement de l'école
- L'année de fondation de l'école

#### Entreprises

LinkedIn permet aux entreprises de créer leurs propres pages, comme celle de LinkedIn elle-même, afin que les employés puissent identifier leur emploi passé ou actuel avec l'entreprise. Assurez-vous que la base de données de LinkedIn peut stocker les informations suivantes pour chaque entreprise :

- Le nom de l'entreprise
- Le secteur d'activité de l'entreprise (par exemple, « Éducation », « Technologie », « Finance », etc.)
- L'emplacement de l'entreprise

#### Connexions

Et enfin, l'essence de LinkedIn est sa capacité à faciliter les connexions entre les personnes. Assurez-vous que la base de données de LinkedIn peut supporter chacune des connexions suivantes.

Connexions avec des Personnes

La base de données de LinkedIn doit pouvoir représenter des connexions mutuelles (réciproques, bidirectionnelles) entre les utilisateurs. Pas besoin de vous soucier des connexions unidirectionnelles, comme l'utilisateur A « suivant » l'utilisateur B sans que l'utilisateur B « suive » l'utilisateur A.

Connexions avec des Écoles

Un utilisateur doit pouvoir créer une affiliation avec une école donnée. Et de même, cette école doit pouvoir trouver ses anciens élèves. De plus, permettez à un utilisateur de définir :

- La date de début de son affiliation (c'est-à-dire, quand il a commencé à fréquenter l'école)
- La date de fin de son affiliation (c'est-à-dire, quand il a obtenu son diplôme), le cas échéant
- Le type de diplôme obtenu/poursuivi (par exemple, « Licence », « Master », « Doctorat », etc.)

Connexions avec des Entreprises

Un utilisateur doit pouvoir créer une affiliation avec une entreprise donnée. Et de même, cette entreprise doit pouvoir trouver ses employés actuels et passés. De plus, permettez à un utilisateur de définir :

- La date de début de son affiliation (c'est-à-dire, la date à laquelle il a commencé à travailler avec l'entreprise)
- La date de fin de son affiliation (c'est-à-dire, quand il a quitté l'entreprise), le cas échéant
- Le titre qu'il occupait pendant son affiliation avec l'entreprise

### Données d'Exemple

Votre base de données doit pouvoir représenter…

- Un utilisateur, Alan Garber, dont le nom d'utilisateur est « alan » et le mot de passe est « password ».
- Un utilisateur, Reid Hoffman dont le nom d'utilisateur est « reid » et le mot de passe est « password ».
- Une école, Harvard University, qui est une université située à Cambridge, Massachusetts, fondée en 1636.
- Une entreprise, LinkedIn, qui est une entreprise technologique dont le siège est à Sunnyvale, Californie.
- L'éducation de premier cycle d'Alan Garber à Harvard, poursuivant une Licence du 1er septembre 1973 au 1er juin 1976.
- L'emploi de Reid Hoffman chez LinkedIn en tant que PDG et Président, du 1er janvier 2003 au 1er février 2007.

## Utilisation

Pour créer une base de données à partir de votre schéma, dans votre dossier `connect`, tapez

```
sqlite3 connect.db
```

Cela créera une base de données SQLite vide nommée `connect.db`.

Ensuite, dans l'invite `sqlite3`, tapez

```
.read schema.sql
```

pour lire les instructions de `schema.sql`.

Rappelez-vous que vous pouvez utiliser `DROP TABLE tablename`, où `tablename` est le nom de votre table, pour supprimer une table de votre base de données.

