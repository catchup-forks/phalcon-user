<?php
namespace Vscms\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Vscms\Models\Profiles;

class UsersForm extends Form
{

    public function initialize($entity = null, $options = null)
    {

        // In edition the id is hidden
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);

        $name = new Text('name', array(
            'placeholder' => 'Name',
            'class' => 'form-control',
        ));

        $name->addValidators(array(
            new PresenceOf(array(
                'message' => 'The name is required'
            ))
        ));

        $this->add($name);

        $email = new Text('email', array(
            'placeholder' => 'Email',
            'class' => 'form-control',
        ));

        $email->addValidators(array(
            new PresenceOf(array(
                'message' => 'The e-mail is required'
            )),
            new Email(array(
                'message' => 'The e-mail is not valid'
            ))
        ));

        $this->add($email);

        $this->add(new Select('profilesId', Profiles::find('active = "Y"'), array(
            'using' => array(
                'id',
                'name'
            ),
            'useEmpty' => true,
            'emptyText' => '...',
            'emptyValue' => '',
            'class' => 'form-control',
        )));

        $this->add(new Select('banned', array(
            'Y' => 'Yes',
            'N' => 'No',
        ), array(
            'class' => 'form-control',
        )));

        $this->add(new Select('suspended', array(
            'Y' => 'Yes',
            'N' => 'No',
        ), array(
            'class' => 'form-control',
        )));

        $this->add(new Select('active', array(
            'Y' => 'Yes',
            'N' => 'No',
        ), array(
            'class' => 'form-control',
        )));
    }
}
