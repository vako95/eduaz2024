<?php
class UserCon extends CI_controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Site_Model');
        $this->lang->load('message', 'en');
    }
    public function index()
    {

        $data['all_skilled'] = $this->Site_Model->get_all_skilled();
        
        $data['get_all_news'] = $this->Site_Model->get_all_news();
        $data['experts_news'] = $this->Site_Model->get_experts_news();
        $data['get_category']   = $this->Site_Model->get_category();
        $data['all_about']    = $this->Site_Model->get_all_about();
        $data['all_popular']  = $this->Site_Model->get_all_popular();

        $data['all_skilled'] = $this->Site_Model->get_all_skilled();
        $data['all_skilled2'] = $this->Site_Model->get_all_skilled2();
        $data['all_skilled3'] = $this->Site_Model->get_all_skilled3();
        $data['all_skilled4'] = $this->Site_Model->get_all_skilled4();

        $this->load->view('user/index', $data);
    }
 
    public function about()
    {
        $data['get_all_news'] = $this->Site_Model->get_all_news();
        $data['all_about'] = $this->Site_Model->get_all_about();
        $data['experts_news'] = $this->Site_Model->get_experts_news();

        $this->load->view('user/about', $data);
    }
    
    public function contact()
    {
        $data['all_skilled'] = $this->Site_Model->get_all_skilled();
     
        $this->load->view('user/contact', $data);
    }
    public function courses()
    {
        $data['experts_news'] = $this->Site_Model->get_experts_news();
        $data['get_all_news'] = $this->Site_Model->get_all_news();
        $data['all_skilled'] = $this->Site_Model->get_all_skilled();
        $this->load->view('user/courses',  $data);
    }
    public function team()
    {
        $data['experts_news'] = $this->Site_Model->get_experts_news();

        $this->load->view('user/team',$data);
    }
    public function testimonial()
    {
        $data['experts_news'] = $this->Site_Model->get_experts_news();

        $this->load->view('user/testimonial', $data);
    }
    public function error_404()
    {

        $this->load->view('user/404');
    }
    public function contactAct()
    {
        $name    = $_POST['name'];
        $email   = $_POST['email'];
        $subject = $_POST['subject'];
        $message = $_POST['message'];

        if (!empty($name) && !empty($email) && !empty($subject) && !empty($message)) {
            $data = [
                'u_name'    =>   $name,
                'u_email'   =>   $email,
                'u_subject' =>   $subject,
                'u_message' =>   $message,
                'u_date'    => date("Y-m-d  H:i:s"),
            ];

            $this->Site_Model->insert($data);
            $this->session->set_flashdata('success', 'Melumat elave olundu.');
            redirect(base_url('contact'));
        } else {
            $this->session->set_flashdata('err', 'Bosluq buraxmayin');
            redirect($_SERVER['HTTP_REFERER']);
        }
    }


    public function news_single($id)
    {
        $data['get_single_news'] = $this->Site_Model->get_single_news($id);
        $data['experts_news'] = $this->Site_Model->get_experts_news();



        $data['all_skilled'] = $this->Site_Model->get_all_skilled();
        $data['all_skilled2'] = $this->Site_Model->get_all_skilled2();
        $data['all_skilled3'] = $this->Site_Model->get_all_skilled3();

        $this->load->view('user/post-details', $data);
    }
    public function experts_single($id)
    {

        $data['get_experts_single'] = $this->Site_Model->get_experts_single($id);
        $data['experts_news'] = $this->Site_Model->get_experts_news();
        
        $this->load->view('user/experts_post',$data);
    }
}
