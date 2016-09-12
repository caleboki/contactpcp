<?php

require_once 'CRM/Core/Page.php';

class CRM_Contactpcp_Page_Pcp extends CRM_Core_Page {

  public function run() {
  	
    // Example: Set the page-title dynamically; alternatively, declare a static title in xml/Menu/*.xml
    CRM_Utils_System::setTitle(ts('Pcp'));
    $contactID = (int) $_GET['cid'];

    $result = civicrm_api3('Pcp', 'get', array(
  	'sequential' => 1,
  	'return' => "title,status_id,goal_amount,page_id",
  	'contact_id' => $contactID,
	));
    
    // Example: Assign a variable for use in a template
    $this->assign('result', $result);

    parent::run();
  }
}



    