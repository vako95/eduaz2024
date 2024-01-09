<?php $this->load->view('user/includes/headerStyle'); ?>
<?php $this->load->view('user/includes/navbar'); ?>
<!-- Navbar End -->


<!-- Header Start -->
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
                            <h5 class="mb-0">
                                <h5 class="mb-0"><?php echo $get_all_news_title[$this->session->userdata('site_lang')]; ?></h5>
                            </h5>
                            <small><?php echo   $get_experts_news_key['e_category']; ?></small>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- Team End -->
<div class="container-xxl py-5">
    <div class="container">

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
                            <h5 class="mb-0">
                                <h5 class="mb-0"><?php echo $get_all_news_title[$this->session->userdata('site_lang')]; ?></h5>
                            </h5>
                            <small><?php echo   $get_experts_news_key['e_category']; ?></small>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- Team End -->


<?php $this->load->view('user/includes/footer'); ?>
<?php $this->load->view('user/includes/footer_script'); ?>