<?php
class LanguageLoader
{
    function initialize() {
        $ci =& get_instance();
        $ci->load->helper('language');
        $siteLang = $ci->session->userdata('site_lang');

           if($siteLang) {
            $ci->lang->load('message',$siteLang);
        }else{
            $ci->lang->load('message','az');
        }



        if ($siteLang == 'en') {
            $ci->session->set_userdata('site_lang','en');
        }elseif($siteLang == 'ru'){
            $ci->session->set_userdata('site_lang','ru');
        }else{
            $ci->session->set_userdata('site_lang','az');
        }

      
    }
}