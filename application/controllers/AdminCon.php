<?php

class AdminCon extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('AdminModel');
    }


    public function login_act()
    {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $data = [
            'username' => $username,
            'password' => md5($password),
        ];

        $data = $this->security->xss_clean($data);
        // print_r('<pre>');
        // print_r($data);

        if (!empty($username) && !empty($password)) {
            $check_admin = $this->AdminModel->check_user($data);


            if ($check_admin) {
                $_SESSION['admin_id'] = $check_admin['id'];
                redirect(base_url('admin_dashboard'));
            } else {
                $this->session->set_flashdata('err', 'Istifadeci adi ve ya sifre yalnisdir');
                redirect($_SERVER['HTTP_REFERER']);
            }
        } else {
            $this->session->set_flashdata('error', 'Bosluq buraxmayin');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function log_out()
    {
        unset($_SESSION['admin_id']);
        $this->session->set_flashdata('success', 'Sizi bir daha gozleyeceyik!');
        redirect(base_url('admin_index'));
    }


    public function index()
    {

        $this->load->view('admin/login_page/login');
    }
    public function login_page()
    {

        $this->load->view('admin/login_page/login_page');
    }
    // public function login_register()
    // {

    //     $this->load->view('admin/login_page/register');
    // }

    public function notFound()
    {

        $this->load->view('admin/404');
    }
    public function dashboard()
    {

        $this->load->view('admin/dashboard');
    }

    public function profile()
    {

        $this->load->view('admin/profile');
    }

    public function news()
    {
        $data['all_data'] = $this->AdminModel->get_all_news();


        $this->load->view('admin/news', $data);
    }
    public function creat_news()
    {

     
      
        $this->load->view('admin/creat_pages/creat_news');
    }

    public function creat_news_act()
    {
        $title_en  = $this->input->post('title_en', TRUE);
        $title_az  = $this->input->post('title_az', TRUE);
        $title_ru  = $this->input->post('title_ru', TRUE);

        $desc_en  = $this->input->post('desc_en', TRUE);
        $desc_az  = $this->input->post('desc_az', TRUE);
        $desc_ru  = $this->input->post('desc_ru', TRUE);



        $date  = $this->input->post('date', TRUE);
        $cate  = $this->input->post('cate', TRUE);
        $status  = $this->input->post('status', TRUE);
   
      

        if (
            !empty($title_en) &&
            !empty($title_az) &&
            !empty($title_ru) &&
            !empty($desc_en) &&
            !empty($desc_az) &&
            !empty($desc_ru) &&
            !empty($cate) &&
            !empty($status)
        ) {

            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if ($this->upload->do_upload('image')) {
                $image_data    =  $this->upload->data();

                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];

                $data = [
                    'n_title'        =>   json_encode($json_decoded_data_title),
                    'n_description'  =>   json_encode($json_decoded_data_description),
                    'n_date'         =>  $date,
                    'n_category'     =>  $cate,
                    'n_status'       =>  str_contains($status, "Active") ? "Active":"Deactive" ,

                    'n_img'      => $image_data['file_name']


                ];
      

                $this->AdminModel->insert_news($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_news'));
            } else {

                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];

                $data = [
                    'n_title'        =>   json_encode($json_decoded_data_title),
                    'n_description'  =>   json_encode($json_decoded_data_description),
                    'n_date'         =>  $date,
                    'n_category'     =>  $cate,
                    'n_status'       =>  str_contains($status, "Active") ? "Active":"Deactive" ,
                ];
              
              
                $this->AdminModel->insert_news($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_news'));
            }
        } else {
            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect(base_url('admin_creat_news'));
        }
    }

    public function delete_news($id)
    {
        $id = $this->security->xss_clean($id);

        $this->AdminModel->delete_news($id);
        $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla silindi.');
        redirect(base_url('admin_news'));
    }

    public function update_news($id)
    {
        $id = $this->security->xss_clean($id);
        $data['get_single_news'] = $this->AdminModel->get_single_news($id);
        $this->load->view('admin/update', $data);
    }

    public function update_news_act($id)
    {

        $title_en  = $this->input->post('title_en', TRUE);
        $title_az  = $this->input->post('title_az', TRUE);
        $title_ru  = $this->input->post('title_ru', TRUE);

        $desc_en  = $this->input->post('desc_en', TRUE);
        $desc_az  = $this->input->post('desc_az', TRUE);
        $desc_ru  = $this->input->post('desc_ru', TRUE);



        $date  = $this->input->post('date', TRUE);
        $cate  = $this->input->post('cate', TRUE);
        $status  = $this->input->post('status', TRUE);
       
        if (
            !empty($title_en) &&
            !empty($title_az) &&
            !empty($title_ru) &&
            !empty($desc_en) &&
            !empty($desc_az) &&
            !empty($desc_ru) &&
            !empty($date) &&
            !empty($cate) &&
            !empty($status)
        ) {
            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);


            if ($this->upload->do_upload('image')) {
                $image_data    =  $this->upload->data();

                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];

                $data = [
                    'n_title'        =>   json_encode($json_decoded_data_title),
                    'n_description'  =>   json_encode($json_decoded_data_description),
                    'n_date'         =>  $date,
                    'n_category'     =>  $cate,
                    'e_status'       =>  str_contains($status, "Active") ? "Active":"Deactive" ,
                    // 'n_status'       =>  str_contains($status, "on") ? TRUE : FALSE,
             

                    'n_img'      => $image_data['file_name']


                ];

                $this->AdminModel->update($id, $data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla yenilendi.');
                redirect(base_url('admin_news'));
            } else {
                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];


                $data = [
                    'n_title'        =>   json_encode($json_decoded_data_title),
                    'n_description'  =>   json_encode($json_decoded_data_description),
                    'n_date'         =>  $date,
                    'n_category'     =>  $cate,
                    'e_status'       =>  str_contains($status, "Active") ? "Active":"Deactive",
                    // 'n_status'       =>  str_contains($status, "on") ? TRUE : FALSE,
                ];


                $id = $this->security->xss_clean($id);
                $data = $this->security->xss_clean($data);

                $this->AdminModel->update($id, $data);
                $this->session->set_flashdata('success', 'Məlumat uğurla yenilendi.');
                redirect(base_url('admin_news'));
            }
        } else {

            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function news_view($id)
    {
        $id = $this->security->xss_clean($id);

        $data['get_single_news'] = $this->AdminModel->get_single_news($id);
        $this->load->view('admin/news_view', $data);
    }

  //About news/////////////////////////////
  public function about_view($id)
  {
      $id = $this->security->xss_clean($id);

      $data['get_single_about'] = $this->AdminModel->get_single_about($id);
      $this->load->view('admin/about_view', $data);
  }
public function creat_about()
{
    $this->load->view('admin/creat_pages/creat_about');
}
public function creat_about_act()
{
    $title_en  = $this->input->post('title_en', TRUE);
    $title_az  = $this->input->post('title_az', TRUE);
    $title_ru  = $this->input->post('title_ru', TRUE);

    $desc_en  = $this->input->post('desc_en', TRUE);
    $desc_az  = $this->input->post('desc_az', TRUE);
    $desc_ru  = $this->input->post('desc_ru', TRUE);



    $date  = $this->input->post('date', TRUE);
    $cate  = $this->input->post('cate', TRUE);
    $status  = $this->input->post('status');


    if (
        !empty($title_en) &&
        !empty($title_az) &&
        !empty($title_ru) &&
        !empty($desc_en) &&
        !empty($desc_az) &&
        !empty($desc_ru) &&
        !empty($cate) &&
        !empty($status)
    ) {

        $config['upload_path']          = './uploads/news/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
        // $config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if ($this->upload->do_upload('image')) {
            $image_data    =  $this->upload->data();

            $json_decoded_data_title = [
                "en" => $title_en,
                "ru" => $title_ru,
                "az" => $title_az,
            ];
            $json_decoded_data_description = [
                "en" => $desc_en,
                "ru" => $desc_ru,
                "az" => $desc_az,
            ];

            $data = [
                'b_title'        =>   json_encode($json_decoded_data_title),
                'b_description'  =>   json_encode($json_decoded_data_description),
                'b_date'         =>  $date,
                'b_category'     =>  $cate,
                'b_status'       =>  $status,

                'b_img'      => $image_data['file_name']


            ];


            $this->AdminModel->insert_about($data);
            $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
            redirect(base_url('admin_about_skilled'));
        } else {

            $json_decoded_data_title = [
                "en" => $title_en,
                "ru" => $title_ru,
                "az" => $title_az,
            ];
            $json_decoded_data_description = [
                "en" => $desc_en,
                "ru" => $desc_ru,
                "az" => $desc_az,
            ];

            $data = [
                'b_title'        =>   json_encode($json_decoded_data_title),
                'b_description'  =>   json_encode($json_decoded_data_description),
                'b_date'         =>  $date,
                'b_category'     =>  $cate,
                'b_status'       =>  $status,
            ];

            $this->AdminModel->insert_about($data);
            $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
            redirect(base_url('admin_about_skilled'));
        }
    } else {
        $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
        redirect(base_url('admin_creat_about'));
    }
}
public function delete_about($id)
{
    $id = $this->security->xss_clean($id);

    $this->AdminModel->delete_about($id);
    $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla silindi.');
    redirect(base_url('admin_about_skilled'));
}

public function update_about($id)
{
    $id = $this->security->xss_clean($id);
    $data['get_single_about'] = $this->AdminModel->get_single_about($id);
    $this->load->view('admin/uptade_about', $data);
}

public function update_about_act($id)
{
    $title_en  = $this->input->post('title_en', TRUE);
    $title_az  = $this->input->post('title_az', TRUE);
    $title_ru  = $this->input->post('title_ru', TRUE);

    $desc_en  = $this->input->post('desc_en', TRUE);
    $desc_az  = $this->input->post('desc_az', TRUE);
    $desc_ru  = $this->input->post('desc_ru', TRUE);



    $date  = $this->input->post('date', TRUE);
    $cate  = $this->input->post('cate', TRUE);
    $status  = $this->input->post('status');
    if (
        !empty($title_en) &&
        !empty($title_az) &&
        !empty($title_ru) &&
        !empty($desc_en) &&
        !empty($desc_az) &&
        !empty($desc_ru) &&
        !empty($date) &&
        !empty($cate) &&
        !empty($status)
    ) {
        $config['upload_path']          = './uploads/news/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
        // $config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);


        if ($this->upload->do_upload('image')) {
            $image_data    =  $this->upload->data();

            $json_decoded_data_title = [
                "en" => $title_en,
                "ru" => $title_ru,
                "az" => $title_az,
            ];
            $json_decoded_data_description = [
                "en" => $desc_en,
                "ru" => $desc_ru,
                "az" => $desc_az,
            ];

            $data = [
                'b_title'        =>   json_encode($json_decoded_data_title),
                'b_description'  =>   json_encode($json_decoded_data_description),
                'b_date'         =>  $date,
                'b_category'     =>  $cate,
                'b_status'       =>  $status,
                'b_img'      => $image_data['file_name']


            ];

            $this->AdminModel->update_about($id, $data);
            $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla yenilendi.');
            redirect(base_url('admin_news'));
        } else {
            $json_decoded_data_title = [
                "en" => $title_en,
                "ru" => $title_ru,
                "az" => $title_az,
            ];
            $json_decoded_data_description = [
                "en" => $desc_en,
                "ru" => $desc_ru,
                "az" => $desc_az,
            ];


            $data = [
                'b_title'        =>   json_encode($json_decoded_data_title),
                'b_description'  =>   json_encode($json_decoded_data_description),
                'b_date'         =>  $date,
                'b_category'     =>  $cate,
                'b_status'       =>  $status,
            ];


            $id = $this->security->xss_clean($id);
            $data = $this->security->xss_clean($data);

            $this->AdminModel->update_about($id, $data);
            $this->session->set_flashdata('success', 'Məlumat uğurla yenilendi.');
            redirect(base_url('admin_about_skilled'));
        }
    } else {

        $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
        redirect($_SERVER['HTTP_REFERER']);
    }
}

  
  //About news/////////////////////////////




    //experts
    public function experts()
    {
        $data['all_expert'] = $this->AdminModel->get_experts_news();


        $this->load->view('admin/experts', $data);
    }
    public function creat_experts()
    {


        $this->load->view('admin/creat_pages/creat_experts');
    }

    public function creat_experts_act()
    {
        
        $title_en  = $this->input->post('title_en', TRUE);
        $title_az  = $this->input->post('title_az', TRUE);
        $title_ru  = $this->input->post('title_ru', TRUE);
    
        $desc_en  = $this->input->post('desc_en', TRUE);
        $desc_az  = $this->input->post('desc_az', TRUE);
        $desc_ru  = $this->input->post('desc_ru', TRUE);
    
    
    
        $date  = $this->input->post('date', TRUE);
        $cate  = $this->input->post('cate', TRUE);
        $status  = $this->input->post('status');
    
    
        if (
            !empty($title_en) &&
            !empty($title_az) &&
            !empty($title_ru) &&
            !empty($desc_en) &&
            !empty($desc_az) &&
            !empty($desc_ru) &&
            !empty($cate) &&
            !empty($status)
        ) {
    
            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;
    
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
    
            if ($this->upload->do_upload('image')) {
                $image_data    =  $this->upload->data();
    
                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];
    
                $data = [
                    'e_title'        =>   json_encode($json_decoded_data_title),
                    'e_description'  =>   json_encode($json_decoded_data_description),
                    'e_date'         =>  $date,
                    'e_category'     =>  $cate,
                    'e_status'       =>  str_contains($status, "Active") ? "Active":"Deactive" ,
    
                    'e_img'      => $image_data['file_name']
    
    
                ];
    
    
                $this->AdminModel->insert_experts($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_experts'));
            } else {
    
                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];
    
                $data = [
                    'e_title'        =>   json_encode($json_decoded_data_title),
                    'e_description'  =>   json_encode($json_decoded_data_description),
                    'e_date'         =>  $date,
                    'e_category'     =>  $cate,
                    'e_status'       =>  str_contains($status, "Active") ? "Active":"Deactive" ,
                ];
    
                $this->AdminModel->insert_experts($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_experts'));
            }
        } else {
            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect(base_url('admin_creat_experts'));
        }
    }

    public function delete_experts($id)
    {
        $id = $this->security->xss_clean($id);

        $this->AdminModel->delete_experts($id);
        $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla silindi.');
        redirect(base_url('admin_experts'));
    }

    public function update_experts($id)
    {
        $id = $this->security->xss_clean($id);
        
      
        
        $data['get_single_instructor'] = $this->AdminModel->get_single_instructor($id);
        $this->load->view('admin/update_experts', $data);
    }

    public function update_experts_act($id)
    {
        
        $title_en  = $this->input->post('title_en', TRUE);
        $title_az  = $this->input->post('title_az', TRUE);
        $title_ru  = $this->input->post('title_ru', TRUE);

        $desc_en  = $this->input->post('desc_en', TRUE);
        $desc_az  = $this->input->post('desc_az', TRUE);
        $desc_ru  = $this->input->post('desc_ru', TRUE);



        $date  = $this->input->post('date', TRUE);
        $cate  = $this->input->post('cate', TRUE);
        $status  = $this->input->post('status', TRUE);
       
        if (
            !empty($title_en) &&
            !empty($title_az) &&
            !empty($title_ru) &&
            !empty($desc_en) &&
            !empty($desc_az) &&
            !empty($desc_ru) &&
            !empty($date) &&
            !empty($cate) &&
            !empty($status)
        ) {
            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);


            if ($this->upload->do_upload('image')) {
                $image_data    =  $this->upload->data();

                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];

                $data = [
                    'e_title'        =>   json_encode($json_decoded_data_title),
                    'e_description'  =>   json_encode($json_decoded_data_description),
                    'e_date'         =>  $date,
                    'e_category'     =>  $cate,
                    'e_status'       =>  str_contains($status, "Active") ? "Active":"Deactive" ,
             

                    'e_img'      => $image_data['file_name']


                ];

                $this->AdminModel->update_experts($id, $data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla yenilendi.');
                redirect(base_url('admin_experts'));
            } else {
                $json_decoded_data_title = [
                    "en" => $title_en,
                    "ru" => $title_ru,
                    "az" => $title_az,
                ];
                $json_decoded_data_description = [
                    "en" => $desc_en,
                    "ru" => $desc_ru,
                    "az" => $desc_az,
                ];


                $data = [
                    'e_title'        =>   json_encode($json_decoded_data_title),
                    'e_description'  =>   json_encode($json_decoded_data_description),
                    'e_date'         =>  $date,
                    'e_category'     =>  $cate,
                    'e_status'       =>  str_contains($status, "Active") ? "Active":"Deactive" ,
                ];


                $id = $this->security->xss_clean($id);
                $data = $this->security->xss_clean($data);

                $this->AdminModel->update_experts($id, $data);
                $this->session->set_flashdata('success', 'Məlumat uğurla yenilendi.');
                redirect(base_url('admin_experts'));
            }
        } else {

            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }
  
  

    public function  experts_view($id)
    {
        $id = $this->security->xss_clean($id);
  
        $data['get_single_instructor'] = $this->AdminModel->get_single_instructor($id);

        $this->load->view('admin/experts_view', $data);
    }
    //experts


    //Uptade skilled/////////////////////////////
    public function creat_skilled()
    {
        $this->load->view('admin/creat_pages/creat_skilled');
    }
    public function creat_skilled_act()
    {
        $title  = $_POST['title'];
        $descr  = $_POST['descr'];
        $date   = $_POST['date'];
        $cate   = $_POST['cate'];
        $status = $_POST['status'];

        if (!empty($title) && !empty($descr) && !empty($date) && !empty($cate) && !empty($status)) {

            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if ($this->upload->do_upload('image')) {
                $img     =  $this->upload->data('file_name');
                $img_ext =  $this->upload->data('file_ext');

                $data = [
                    's_title'        =>  $title,
                    's_description'  =>  $descr,
                    's_date'         =>  $date,
                    's_category'     =>  $cate,
                    's_status'       =>  $status,
                    's_img'          => $img,
                    's_img_ext'      => $img_ext,


                ];
                $data = $this->security->xss_clean($data);

                $this->AdminModel->insert_skilled($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_news_skilled'));
            } else {
                $data = [
                    's_title'        =>  $title,
                    's_description'  =>  $descr,
                    's_date'         =>  $date,
                    's_category'     =>  $cate,
                    's_status'       =>  $status,
                ];
                $data = $this->security->xss_clean($data);

                $this->AdminModel->insert_skilled($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_news_skilled'));
            }
        } else {
            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect(base_url('admin_creat_skilled'));
        }
    }
    public function news_skilled()
    {
        $data['all_skilled'] = $this->AdminModel->get_skilled_news();

        $this->load->view('admin/news_skilled', $data);
    }
    public function update_skilled($id)
    {
        $id = $this->security->xss_clean($id);

        $data['get_single_skilled'] = $this->AdminModel->get_single_skilled($id);
        $this->load->view('admin/update_skill', $data);
    }


    public function update_skilled_act($id)
    {

        $title  = $_POST['title'];
        $descr  = $_POST['descr'];
        $date   = $_POST['date'];
        $cate   = $_POST['cate'];
        $status = $_POST['status'];

        if (!empty($title) && !empty($descr) && !empty($date) && !empty($cate) && !empty($status)) {

            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);


            if ($this->upload->do_upload('image')) {
                $img     =  $this->upload->data('file_name');
                $img_ext =  $this->upload->data('file_ext');

                $data = [
                    's_title'        =>  $title,
                    's_description'  =>  $descr,
                    's_date'         =>  $date,
                    's_category'     =>  $cate,
                    's_status'       =>  $status,
                    's_img'          =>  $img,
                    's_img_ext'      =>  $img_ext,


                ];
                $id = $this->security->xss_clean($id);
                $data = $this->security->xss_clean($data);

                $this->AdminModel->update_skilled($id, $data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla yenilendi.');
                redirect(base_url('admin_news_skilled'));
            } else {
                $data = [
                    's_title'        =>  $title,
                    's_description'  =>  $descr,
                    's_date'         =>  $date,
                    's_category'     =>  $cate,
                    's_status'       =>  $status,
                ];

                $id = $this->security->xss_clean($id);
                $data = $this->security->xss_clean($data);

                $this->AdminModel->update_skilled($id, $data);
                $this->session->set_flashdata('success', 'Məlumat uğurla yenilendi.');
                redirect(base_url('admin_news_skilled'));
            }
        } else {

            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function delete_skilled($id)
    {
        $id = $this->security->xss_clean($id);

        $this->AdminModel->delete_skilled($id);
        $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla silindi.');
        redirect(base_url('admin_news_skilled'));
    }

    //Uptade skilled/////////////////////////////

    //popular courses

    public function creat_popular()
    {

        $this->load->view('admin/creat_pages/creat_popular');
    }
    public function creat_popular_act()
    {
        $title   = $_POST['title'];
        $price   = $_POST['price'];
        $name    = $_POST['name'];
        $student = $_POST['student'];
        $descr   = $_POST['descr'];
        $date    = $_POST['date'];
        $cate    = $_POST['cate'];
        $status  = $_POST['status'];


        if (!empty($title) && !empty($price) && !empty($name)  && !empty($student)   &&  !empty($descr) && !empty($date) && !empty($cate) && !empty($status)) {

            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if ($this->upload->do_upload('image')) {
                $img     =  $this->upload->data('file_name');
                $img_ext =  $this->upload->data('file_ext');

                $data = [
                    'p_title'        =>  $title,
                    'p_price'        =>  $price,
                    'p_name'        =>   $name,
                    'p_student'      =>  $student,
                    'p_description'  =>  $descr,
                    'p_date'         =>  $date,
                    'p_category'     =>  $cate,
                    'p_status'       =>  $status,
                    'p_img'          =>  $img,
                    'p_img_ext'      =>  $img_ext,


                ];

                $data = $this->security->xss_clean($data);

                $this->AdminModel->insert_popular($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_popular_courses'));
            } else {
                $data = [
                    'p_title'        =>  $title,
                    'p_price'        =>  $price,
                    'p_name'        =>   $name,
                    'p_student'      =>  $student,
                    'p_description'  =>  $descr,
                    'p_date'         =>  $date,
                    'p_category'     =>  $cate,
                    'p_status'       =>  $status,
                ];

                $data = $this->security->xss_clean($data);
                $this->AdminModel->insert_popular($data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla elave edildi.');
                redirect(base_url('admin_popular_courses'));
            }
        } else {
            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect(base_url('admin_creat_popular'));
        }
    }

    public function popular_courses()
    {
        $data['all_popular'] = $this->AdminModel->get_popular_news();
        $this->load->view('admin/popular_courses', $data);
    }
    public function update_popular($id)
    {
        $id = $this->security->xss_clean($id);

        $data['get_single_popular'] = $this->AdminModel->get_single_popular($id);
        $this->load->view('admin/update_popular', $data);
    }


    public function update_popular_act($id)
    {

        $title   = $_POST['title'];
        $price   = $_POST['price'];
        $name    = $_POST['name'];
        $student = $_POST['student'];
        $descr   = $_POST['descr'];
        $date    = $_POST['date'];
        $cate    = $_POST['cate'];
        $status  = $_POST['status'];

        if (!empty($title) && !empty($price)  && !empty($student) && !empty($descr) && !empty($date) && !empty($cate) && !empty($status)) {

            $config['upload_path']          = './uploads/news/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf|mp3|mp4';
            // $config['max_size']             = 100;
            // $config['max_width']            = 1024;
            // $config['max_height']           = 768;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);


            if ($this->upload->do_upload('image')) {
                $img     =  $this->upload->data('file_name');
                $img_ext =  $this->upload->data('file_ext');

                $data = [
                    'p_title'        =>  $title,
                    'p_price'        =>  $price,
                    'p_name'         =>  $name,
                    'p_student'      =>  $student,
                    'p_description'  =>  $descr,
                    'p_date'         =>  $date,
                    'p_category'     =>  $cate,
                    'p_status'       =>  $status,
                    'p_img'          =>  $img,
                    'p_img_ext'      =>  $img_ext,


                ];

                $id = $this->security->xss_clean($id);
                $data = $this->security->xss_clean($data);

                $this->AdminModel->update_popular($id, $data);
                $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla yenilendi.');
                redirect(base_url('admin_popular_courses'));
            } else {
                $data = [
                    'p_title'        =>  $title,
                    'p_price'        =>  $price,
                    'p_name'         =>  $name,
                    'p_student'      =>  $student,
                    'p_description'  =>  $descr,
                    'p_date'         =>  $date,
                    'p_category'     =>  $cate,
                    'p_status'       =>  $status,
                ];

                $id = $this->security->xss_clean($id);
                $data = $this->security->xss_clean($data);

                $this->AdminModel->update_popular($id, $data);
                $this->session->set_flashdata('success', 'Məlumat uğurla yenilendi.');
                redirect(base_url('admin_popular_courses'));
            }
        } else {

            $this->session->set_flashdata('error', 'Boşluq buraxmayin!');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }

    public function delete_popular($id)
    {
        $id = $this->security->xss_clean($id);

        $this->AdminModel->delete_popular($id);
        $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla silindi.');
        redirect(base_url('admin_popular_courses'));
    }

    //popular courses
  
    public function about_skilled()
    {
        $data['all_about'] = $this->AdminModel->get_about_news();

        $this->load->view('admin/about_skilled', $data);
    }
    public function update_about_skilled($id)
    {
        $id = $this->security->xss_clean($id);

        $data['get_about_skilled'] = $this->AdminModel->get_about_skilled($id);
        $this->load->view('admin/update_about', $data);
    }



    //Uptade skilled/////////////////////////////
    public function user_reguest()
    {
        $data['get_all'] = $this->AdminModel->get_all_user_reguest();
        $this->load->view('admin/user_reguest', $data);
    }

    public function delete_message($id)
    {
        $id = $this->security->xss_clean($id);

        $this->AdminModel->delete_message($id);
        $this->session->set_flashdata('success', 'Təbriklər! Məlumat uğurla silindi.');
        redirect(base_url('admin_user_reguest'));
    }

    public function prosses()
    {
        $this->form_validation->set_rules('nama', 'Nama Lengkap', 'requried');
        if ($this->form_validation->run() == TRUE) {
            $this->session->set_flashdata('success', 'Berhasil melakukan input data');
        } else {
            $this->session->set_flashdata('error', 'Yeniden yoxlayin');
        }
        redirect('sweet_alert');
    }
}
