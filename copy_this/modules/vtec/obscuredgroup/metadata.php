<?php

/**
 *
 * Version:    1.0
 * Author:     Pasquale Pari | Vendingtechnik
 * Author URL: http://www.vendingtechnik.com
 * License:    GNU GPL 3.0
 *             !! it is forbidden to resell this Software !!
 */

/**
 * Metadata version
 */
$sMetadataVersion = '1.1';


$aModule = array (
    'id'           => 'vtec_obscuredgroup',
    'title'        => 'VTEC Obscured Group',
    'description'  => 'Mit diesem Modul kann eine Benutzergruppe angegeben werden die berechtigt ist alle Artikel zu kaufen. In der Artikelverwaltung, im Hauptreiter kann eine Checkbox aktiviert werden, die angibt ob der Artikel nur der entsprechenden Benutzergruppe als kaufbar angezeigt wird.',
    'thumbnail'    => 'obscured.jpg',
    'version'      => '1.0',
    'author'       => 'Pasquale Pari',
    'url'          => 'http://www.vendingtechnik.com <br \> http://www.getraenkekiste.ch',
    'email'        => 'pasquale.pari@vendingtechnik.com',
    'extend'       => '',
    
    'settings'     => array
    (
        array( 'group'  => 'vtec_obscured_main',  'name'  => 'vtec_obscuredgroupid',                'type' => 'str',    'value'  => ''),
        array( 'group'  => 'vtec_obscured_main',  'name'  => 'vtec_adultgroup_id',                  'type' => 'str',    'value'  => ''),
        
        array( 'group'  => 'vtec_obscured_img',  'name'  => 'vtec_obscured_kein_postversand',      'type' => 'str',    'value'  => 'kein_postversand.jpg'),
        array( 'group'  => 'vtec_obscured_img',  'name'  => 'vtec_obscured_nur_postversand',       'type' => 'str',    'value'  => 'postversand.jpg'), 
        array( 'group'  => 'vtec_obscured_img',  'name'  => 'vtec_obscured_nicht_in_gruppe',       'type' => 'str',    'value'  => 'nicht_in_gruppe.jpg'),
        array( 'group'  => 'vtec_obscured_img',  'name'  => 'vtec_obscured_kostenlose_lieferung',  'type' => 'str',    'value'  => 'kostenloser_kurier.jpg'),
        array( 'group'  => 'vtec_obscured_img',  'name'  => 'vtec_obscured_adultgroup',            'type' => 'str',    'value'  => 'adult_verification.jpg'),
        
        array( 'group'  => 'vtec_obscured_set',  'name'  => 'vtec_obscured_viewoxid',              'type' => 'bool',   'value'  => '0',),
     ),            
      
    'blocks' => array(
        array('template'     => 'page/details/inc/productmain.tpl',
              'block'        => 'details_productmain_tobasket',
              'file'         => '/views/blocks/vtec_productmain.tpl',
             ),      
      
        array('template'     => 'article_main.tpl',
              'block'        => 'admin_article_main_form',         
              'file'         => '/views/blocks/vtec_admin_obscuredgroup.tpl',
             ),
        array ('template'    => 'widget/product/listitem_infogrid.tpl',
               'block'       => 'widget_product_listitem_infogrid_tobasket',
               'file'        => 'views/blocks/vtec_obscured_infogrid.tpl',
              ),
        array ('template'    => 'widget/product/listitem_infogrid.tpl',
               'block'       => 'widget_product_listitem_infogrid_price_value',
               'file'        => 'views/blocks/vtec_obscured_infogrid_symbol.tpl',
              ),      
        array ('template'    => 'layout/page.tpl',
               'block'       => 'layout_page_vatinclude',
               'file'        => 'views/blocks/vtec_obscured_vatinclude',
              ),  
        array( 'template'    => 'usergroup_main.tpl', 
               'block'       => 'admin_usergroup_main_form', 
               'file'        => '/views/blocks/vtec_admin_BenutzerGruppenID.tpl',          
              ), 
              
        ),       
                        
);
