Feature: Filling the account page
In order to sign in an account as a user and modify user account

Test fonctionnel sur l'authentification d'un user et la modification des données utilisateur
Scenario: Ajouter des données fictives dans les différents champs
Given I am on the authentification page
And I authenticated as "jvaljean" using "cosette"
When I submit the form
Then I should see Accueil
When I click on Mon Compte
Then I should see Mon Compte form
When I put nom as "test", prenom as "test", birthday as "01/01/2000", phone as "0600000001", email as "user@domain.mail", login as "", password as "cosette", password2 as "mdp1234", number as "8", street as "Somewhere", districtCode as "49100", city as "Nowhere"
    And I submit the form Validation
Then I should see Validation