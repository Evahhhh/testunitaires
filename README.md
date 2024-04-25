1. configurer les parametres de la BDD 02switch
2. Mettre à jour la version de phpunit en fonction de votre environnement
3. Lancer les tests
4. Copier l'application dans htdocs 
5. Créer un repository pour votre binôme dans gitlab et pusher votre application
5. Lancer Apache et s'authentifier avec jvaljean (mot de passe cosette)
6. Corriger le probleme d'authentification
7. Lancer le pipeline sur Gitlab pour lancer les tests en automatique
8. Ajouter les tests de qualité de code, SAST,et de detection de secret:
include:
  - template: Security/SAST.gitlab-ci.yml
  - template: Security/Secret-Detection.gitlab-ci.yml
##  - template: Security/Dependency-Scanning.gitlab-ci.yml => à payer
  - template: Code-Quality.gitlab-ci.yml

stages:
  - test
#
job-analyse:
  stage: test
  script:
    - echo "Running tests Analyse"
