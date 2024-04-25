<?php

use Behat\Behat\Context\Context;
use Behat\Mink\WebAssert;
use Behat\MinkExtension\Context\MinkContext;
use Facebook\WebDriver\Remote\DesiredCapabilities;
use Facebook\WebDriver\Remote\RemoteWebDriver;
use Facebook\WebDriver\WebDriverBy;
use Facebook\WebDriver\WebDriverExpectedCondition;


/**
 * classe FeatureContext to run fonctïonnel test
 */
class FeatureContext extends MinkContext
{

    /**
     *   driver PHP pour selenium
     * */

    protected $driver;
    /**
     * URL du serveur selenium
     */
    protected $serverUrl = 'http://localhost:4444';
    /**
     * Constructor.
     *
     *
     */
    public function __construct()
    {
        $desiredCapabilities = DesiredCapabilities::firefox();

        // Disable accepting SSL certificates
        $desiredCapabilities->setCapability('acceptSslCerts', false);
        $this->driver = RemoteWebDriver::create($this->serverUrl, $desiredCapabilities);
    }

    /**
     * @Given I am on the authentification page
     */
    public function iAmOnTheAuthentificationPage()
    {
        $this->driver->get('http://127.0.0.1/test4-correction');
    }

    /**
     * @Given /I authenticated as "(?P<username>[^"]*)" using "(?P<password>[^"]*)"/
     */
    public function iAuthenticatedWithUsernameAndPassword($username, $password)
    {
        $this->driver->findElement(WebDriverBy::id('login'))
            ->sendKeys($username);
        $this->driver->findElement(WebDriverBy::id('password-input'))
            ->sendKeys($password);
    }

    /**
     * @When I submit the form
     */
    public function iSubmitTheForm()
    {

        $this->driver->findElement(WebDriverBy::id('valider'))
            ->submit();
    }

    /**
     * @Then I should see Accueil
     */
    public function iShouldSeeAccueil()
    {
        //wait to load the web page
        $this->driver->wait(10, 1000)->until(WebDriverExpectedCondition::presenceOfElementLocated(WebDriverBy::linktext("Ajax")));

        // Find link Les tests unitaires (PHPUNIT) element of 'Accueil' page
        $this->driver->findElement(
            WebDriverBy::linkText("Les tests unitaires (PHPUNIT)")
        );
    }

    /**
     * @When /I add a book "(?P<title>[^"]*)" written by "(?P<author>[^"]*)" edited by "(?P<editor>[^"]*)" and is "(?P<info>[^"]*)"/
     */
    public function iAddABook($title, $author, $editor, $info)
    {
        //I click to add a book
        $this->driver->findElement(WebDriverBy::linkText('Ajouter un livre'))
            ->click();

        //I fill the form
        $this->driver->findElement(WebDriverBy::name('nom'))
            ->sendKeys($title);
        $this->driver->findElement(WebDriverBy::id('auteur'))
            ->sendKeys($author);
        $this->driver->findElement(WebDriverBy::id('edition'))
            ->sendKeys($editor);
        $this->driver->findElement(WebDriverBy::id('info'))
            ->sendKeys($info);

        //I submit the form
        //$this->driver->findElement(WebDriverBy::name('Ajouter'))->click();
    }

    /**
     * @Then I should see Book form
     */
    public function iShouldSeeBookForm()
    {
        //wait to load the web page
        $this->driver->wait(10, 1000)->until(WebDriverExpectedCondition::presenceOfElementLocated(WebDriverBy::name("nom")));
    }

    /**
     * @Then I quit at the end
     */
    public function iEnd()
    {
        // Make sure to always call quit() at the end to terminate the browser session
        $this->driver->quit();
    }

    /**
     * @When I click on Mon Compte
     */
    public function iClickOnMonCompte()
    {
        //I click to add a book
        $this->driver->findElement(WebDriverBy::linkText('Mon Compte'))
            ->click();
    }

    /**
     * @Then I should see Mon Compte form
     */
    public function iShouldSeeMonCompte()
    {
        $this->driver->wait(10, 1000)->until(WebDriverExpectedCondition::presenceOfElementLocated(WebDriverBy::id("nom")));
    }

    /**
     * @When /I put nom as "(?P<lname>[^"]*)", prenom as "(?P<fname>[^"]*)", birthday as "(?P<birth>[^"]*)", phone as "(?P<phone>[^"]*)", email as "(?P<mail>[^"]*)", login as "(?P<login>[^"]*)", password as "(?P<pwd>[^"]*)", password2 as "(?P<pwdc>[^"]*)", number as "(?P<number>[^"]*)", street as "(?P<street>[^"]*)", districtCode as "(?P<dc>[^"]*)", city as "(?P<city>[^"]*)"/
     */
    public function iChangeUser($lname, $fname, $birth, $phone, $mail, $login, $pwd, $pwdc, $number, $street, $dc, $city)
    {
        //I fill the form
        $this->driver->findElement(WebDriverBy::id('nom'))->clear();
        $this->driver->findElement(WebDriverBy::id('prenom'))->clear();
        $this->driver->findElement(WebDriverBy::id('datepicker'))->clear();
        $this->driver->findElement(WebDriverBy::id('tel'))->clear();
        $this->driver->findElement(WebDriverBy::id('email'))->clear();
        //$this->driver->findElement(WebDriverBy::id('login'))->clear();
        $this->driver->findElement(WebDriverBy::id('pwd'))->clear();
        $this->driver->findElement(WebDriverBy::id('pwd2'))->clear();
        $this->driver->findElement(WebDriverBy::id('num'))->clear();
        $this->driver->findElement(WebDriverBy::id('rue'))->clear();
        $this->driver->findElement(WebDriverBy::id('cp'))->clear();
        $this->driver->findElement(WebDriverBy::id('vi'))->clear();

        $this->driver->findElement(WebDriverBy::id('nom'))
            ->sendKeys($lname);
        $this->driver->findElement(WebDriverBy::id('prenom'))
            ->sendKeys($fname);
        $this->driver->findElement(WebDriverBy::id('datepicker'))
            ->sendKeys($birth);
        $this->driver->findElement(WebDriverBy::id('tel'))
            ->sendKeys($phone);
        $this->driver->findElement(WebDriverBy::id('email'))
            ->sendKeys($mail);
        $this->driver->findElement(WebDriverBy::id('login'))
            ->sendKeys($login);
        $this->driver->findElement(WebDriverBy::id('pwd'))
            ->sendKeys($pwd);
        $this->driver->findElement(WebDriverBy::id('pwd2'))
            ->sendKeys($pwdc);
        $this->driver->findElement(WebDriverBy::id('num'))
            ->sendKeys($number);
        $this->driver->findElement(WebDriverBy::id('rue'))
            ->sendKeys($street);
        $this->driver->findElement(WebDriverBy::id('cp'))
            ->sendKeys($dc);
        $this->driver->findElement(WebDriverBy::id('vi'))
            ->sendKeys($city);
    }

    /**
     * @When I submit the form Validation
     */
    public function iSubmitUserFormValidation()
    {
        // I submit the form
        $this->driver->findElement(WebDriverBy::className('btn-primary'))->submit();
    }

    /**
     * @Then I should see Validation
     */
    public function iShouldSeeValidation()
    {
        //wait to load the web page
        $this->driver->wait(10, 1000)->until(WebDriverExpectedCondition::presenceOfElementLocated(WebDriverBy::className("lead")));

        // Find link Les tests unitaires (PHPUNIT) element of 'Accueil' page
        //$this->driver->findElement(
        //    WebDriverBy::name("Compte mis à jour.")
        //);
    }
}
