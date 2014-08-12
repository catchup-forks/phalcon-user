<?php
return new \Phalcon\Config(array(
    'database' => array(
        'adapter' => 'Mysql',
        'host' => 'localhost',
        'username' => 'root',
        'password' => '',
        'dbname' => 'vscms'
    ),
    'application' => array(
        'controllersDir' => APP_DIR . '/controllers/',
        'modelsDir' => APP_DIR . '/models/',
        'formsDir' => APP_DIR . '/forms/',
        'viewsDir' => APP_DIR . '/views/',
        'libraryDir' => APP_DIR . '/library/',
        'pluginsDir' => APP_DIR . '/plugins/',
        'cacheDir' => APP_DIR . '/cache/',
        'baseUri' => '/phalcon/vsuser/',
        'publicUrl' => 'vscms.vietsol.net',
        'cryptSalt' => 'eEAfR|_&G&f,+vU]:jFr!!A&+71w1Ms9~8_4L!<@[N@DyaIP_2My|:+.u>/6m,$D'
    ),
    'mail' => array(
        'fromName' => 'Nam Nguyen',
        'fromEmail' => 'nam.nv@vietsol.net',
        'smtp' => array(
            'server' => 'smtp.gmail.com',
            'port' => 587,
            'security' => 'tls',
            'username' => 'nam.nv',
            'password' => 'nvn14081985'
        )
    ),
    'amazon' => array(
        'AWSAccessKeyId' => '',
        'AWSSecretKey' => ''
    )
));
