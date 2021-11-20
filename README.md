# Sujet des 24h du code - Proposé par Sopra steria

L’objectif du sujet est de développer des smartcontract permettant aux personnages de son escouade de réaliser plusieurs actions comme combattre ou explorer un lieu par exemple dans
un jeu de rôle sur un réseau blockchain Etherium.

## Sujet
Sujet
Pour le déroulement du sujet, nous fournissons une blockchain Etherium associée à des smartcontrats de gestion d’un jeu de rôle.

A vous de créer votre escouade pour participer aux combats contre les autres équipes afin de gagner or et expérience, ou aller explorer des lieux.

Pour combattre, vous devez développer la stratégie de combat de chacun de vos avatars.
Une stratégie est un smartcontrat développé avec le langage Solidity. Elle consiste à choisir l’action de l’avatar au tour courant suivant l’action précédente de l’adversaire et les dégâts subis ou donnés. Ce smartcontract sera exécuter par le jeu.

L’exploration sera réalisée par votre propre smartcontract dont le déploiement et l’exécution sera à votre charge.
Lorsque vous explorez un lieu vous pouvez appliquer son effet ce qui permettra de gagner de l’argent ainsi que des points de compétence pour votre personnage mais il y a aussi des risques de perdre des PV ou un peu d’argent.

Tant que vous n’appliquez pas l’effet du lieu, votre avatar qui est présent dessus bloquera l’accès aux autres. Mais attention, le maître du jeu peut vous forcer à quitter le lieu.
Vous pouvez quitter un lieu sans appliquer son effet.

Chaque lieu dispose d’un code d’accès, pour les premiers lieux il s’agit du code 0. Suite à une exploration vous pouvez obtenir un nouveau code d’accès, à vous de trouver pour quels lieux.
