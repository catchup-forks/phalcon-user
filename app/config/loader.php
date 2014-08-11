<?php
$loader = new \Phalcon\Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$loader->registerNamespaces(array(
    'Vscms\Models' => $config->application->modelsDir,
    'Vscms\Controllers' => $config->application->controllersDir,
    'Vscms\Forms' => $config->application->formsDir,
    'Vscms' => $config->application->libraryDir
));

$loader->register();

// Use composer autoloader to load vendor classes
//require_once __DIR__ . '/../../vendor/autoload.php';
