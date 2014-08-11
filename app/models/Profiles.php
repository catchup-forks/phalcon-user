<?php
namespace Vscms\Models;

use Phalcon\Mvc\Model;

/**
 * Vscms\Models\Profiles
 * All the profile levels in the application. Used in conjenction with ACL lists
 */
class Profiles extends Model
{

    /**
     * ID
     * @var integer
     */
    public $id;

    /**
     * Name
     * @var string
     */
    public $name;

    /**
     * Define relationships to Users and Permissions
     */
    public function initialize()
    {
        $this->hasMany('id', 'Vscms\Models\Users', 'profilesId', array(
            'alias' => 'users',
            'foreignKey' => array(
                'message' => 'Profile cannot be deleted because it\'s used on Users'
            )
        ));

        $this->hasMany('id', 'Vscms\Models\Permissions', 'profilesId', array(
            'alias' => 'permissions'
        ));
    }
}
