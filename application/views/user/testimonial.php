<?php $this->load->view('user/includes/headerStyle'); ?>
<?php $this->load->view('user/includes/navbar'); ?>


<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown"><?php echo $this->lang->line('testimonial'); ?></h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a class="text-white" href="#"><?php echo $this->lang->line('home'); ?></a></li>
                        <li class="breadcrumb-item text-white active" aria-current="page"><?php echo $this->lang->line('testimonial'); ?></li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->


<!-- Testimonial Start -->
<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container">
        <div class="text-center">
            <h6 class="section-title bg-white text-center text-primary px-3"><?php echo $this->lang->line('testimonial'); ?></h6>
            <h1 class="mb-5"><?php echo $this->lang->line('say'); ?></h1>
        </div>
        <div class="owl-carousel testimonial-carousel position-relative">
            <?php foreach ($experts_news as $get_experts_news_key) { ?>
                <?php $get_all_news_title = json_decode($get_experts_news_key['e_title'], TRUE);  ?>
                <?php $get_all_news_description = json_decode($get_experts_news_key['e_description'], TRUE);  ?>
                <div class="testimonial-item text-center">
                    <?php if ($get_experts_news_key['e_img']) { ?>
                        <img style="width: 80px; height: 80px;" class="border rounded-circle p-2 mx-auto img_student " src="<?php echo base_url('uploads/news/' .  $get_experts_news_key['e_img']); ?>">
                    <?php } else { ?>
                        <img class="border rounded-circle p-2 mx-auto img_student" src="<?php echo base_url('public/admin/assets/'); ?>img/profile.png" style="width: 80px; height: 80px;">
                    <?php  } ?>

                    <p><?php echo $get_experts_news_key['e_category']; ?></p>
                    <p style="color: green;"><?php echo $get_experts_news_key['e_status']; ?></p>
                    <div class="testimonial-text bg-light text-center p-4">
                        <p class="mb-0"></p>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- Testimonial End -->

<?php $this->load->view('user/includes/footer'); ?>
<?php $this->load->view('user/includes/footer_script'); ?>