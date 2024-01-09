<?php $this->load->view('user/includes/headerStyle'); ?>
<?php $this->load->view('user/includes/navbar'); ?>

<!-- Navbar Start -->

<!-- Navbar End -->

<style>
    .img_slider {
        width: 100%;
        height: 700px;
        object-fit: cover;
    }

    .img_expert {
        width: 100%;
        height: 300px;
        object-fit: cover;
    }

    .img_cate {
        width: 100%;
        height: 300px;
        object-fit: contain;
    }

    .imgexp {
        width: 100%;
        height: 295px;
        object-fit: cover;
    }
</style>
<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown">About Us</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a class="text-white" href="<?php echo base_url('index'); ?>">Home</a></li>
                        <li class="breadcrumb-item"><a class="text-white" href="<?php echo base_url('team'); ?>">Pages</a></li>

                        <li class="breadcrumb-item text-white active" aria-current="page"><a class="text-white" href="<?php echo base_url('team'); ?>">About </a></li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->


<!-- Service Start -->
<!-- <div class="container-xxl py-5">
    <div class="container">
        <div class="row g-4">

        
  
            <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item text-center pt-3">
                    <div class="p-4">
                        <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>

                    </div>
                </div>
            </div>
      
           </div>
    </div>
</div> -->
<!-- Service End -->


<!-- About Start -->
<?php $get_all_news_title = json_decode($get_experts_single['e_title'], TRUE);  ?>
<?php $get_all_news_description = json_decode($get_experts_single['e_description'], TRUE);  ?>
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5">
            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <?php if ($get_experts_single['e_img']) { ?>
                        <img class="" src="<?php echo base_url('uploads/news/' . $get_experts_single['e_img']); ?>" alt="" style="object-fit: cover;">
                    <?php } else { ?>
                        <img class="img-fluid postimg" src="<?php echo base_url('public/user/'); ?>img/aviable.png" alt="">
                    <?php } ?>

                </div>
            </div>

            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                <h6 class="section-title bg-white text-start text-primary pe-3"><?php echo $this->lang->line('about us'); ?></h6>
               
                <h1 class="mb-4"><?php echo $get_all_news_title[$this->session->userdata('site_lang')]; ?></h1>
                <p class="mb-4"><?php echo $get_all_news_description[$this->session->userdata('site_lang')]; ?></p>
                <br>
                <div class="position-relative d-flex justify-content-left" style="margin-top: -23px;">
                                <div class="bg-light d-flex justify-content-center pt-2 px-1">
                                    <a class="btn btn-sm-square btn-primary mx-1" href="https://www.facebook.com/Stimul.edu.az"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-sm-square btn-primary mx-1" href="https://twitter.com/STIMUL_AZ"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-sm-square btn-primary mx-1" href="https://www.instagram.com/stimul.az/"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                <br>
                <p style="color: green;"><?php echo $get_experts_single['e_status']; ?></p>
                <h3 style="color: green;"><?php echo $get_experts_single['e_category']; ?></h3>
                
                <br>
                <br>
                <div class="row gy-2 gx-4 mb-4">
                    <div class="col-sm-6">
                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $get_experts_single['e_category']; ?></p>
                    </div>

                    <div class="col-sm-6">
                        <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $get_experts_single['e_date']; ?></p>
                    </div>


           
                    <a class="btn btn-primary py-3 px-5 mt-2" href="<?php echo base_url('about'); ?>"><?php echo $this->lang->line('readmore'); ?></a>
                </div>

            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3"><?php echo $this->lang->line('instructors'); ?></h6>
                <h1 class="mb-5"><?php echo $this->lang->line('expert instructors'); ?></h1>
            </div>
            <div class="row g-4">
                <?php foreach ($experts_news as $get_experts_news_key) { ?>
                    <?php $get_all_news_title = json_decode($get_experts_news_key['e_title'], TRUE);  ?>
                    <?php $get_all_news_description = json_decode($get_experts_news_key['e_description'], TRUE);  ?>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item bg-light">
                            <div class="overflow-hidden">
                                <a class="position-relative d-block overflow-hidden" href="<?php echo base_url('experts_single/' . $get_experts_news_key['e_id']); ?>">
                                    <?php if ($get_experts_news_key['e_img']) { ?>
                                        <img class="img-fluid imgexp" src="<?php echo base_url('uploads/news/' . $get_experts_news_key['e_img']); ?>" alt="">
                                    <?php } else { ?>
                                        <img class="img-fluid" src="<?php echo base_url('public/user/'); ?>img/team-1.jpg" alt="">
                                    <?php  } ?>
                                </a>
                            </div>
                            <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                                <div class="bg-light d-flex justify-content-center pt-2 px-1">
                                    <a class="btn btn-sm-square btn-primary mx-1" href="https://www.facebook.com/Stimul.edu.az"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-sm-square btn-primary mx-1" href="https://twitter.com/STIMUL_AZ"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-sm-square btn-primary mx-1" href="https://www.instagram.com/stimul.az/"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4">
                                <h5 class="mb-0"><?php echo $get_all_news_title[$this->session->userdata('site_lang')]; ?></h5>
                                <p style="color: green;"><?php echo $get_experts_news_key['e_status']; ?></p>
                                <small><?php echo   $get_experts_news_key['e_category']; ?></small>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <!-- Team End -->


    <!-- Footer Start -->

    <!-- Footer End -->


    <!-- Back to Top -->
    <?php $this->load->view('user/includes/footer'); ?>
    <?php $this->load->view('user/includes/footer_script'); ?>