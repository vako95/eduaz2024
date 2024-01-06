<?php $this->load->view('user/includes/headerStyle'); ?>
<?php $this->load->view('user/includes/navbar'); ?>
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

.popimg {
width: 100%;
height: 268px;
object-fit: cover;
}
.img_student
{
width: 80px;
height: 80px;
object-fit: cover;
}
</style>

<!-- Carousel Start -->


<!-- Carousel End -->


<!-- Service Start -->
<div class="container-xxl py-5">
<div class="container">
<div class="row g-4">
<?php foreach ($get_all_news as $get_all_news_key) { ?>
    <?php $get_all_news_title = json_decode($get_all_news_key['n_title'],TRUE);  ?>
    <?php $get_all_news_description = json_decode($get_all_news_key['n_description'],TRUE);  ?>
<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
    <div class="service-item text-center pt-3">
        <div class="p-4">
            <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
            <h5 class="mb-3"><?php echo $get_all_news_title[$this->session->userdata('site_lang')]; ?></h5>
            <p><?php echo $get_all_news_description[$this->session->userdata('site_lang')]; ?></p>
        </div>
    </div>
</div>
<?php } ?>
</div>
</div>
</div>
<!-- Service End -->


<!-- About Start -->
<div class="container-xxl py-5">
<div class="container">
<div class="row g-5">
<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
<div class="position-relative h-100">
    <img class="img-fluid position-absolute w-100 h-100" src="<?php echo base_url('public/user/'); ?>img/about.jpg" alt="" style="object-fit: cover;">
</div>
</div>
<?php foreach ($all_about as $all_about_key) { ?>
<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
    <h6 class="section-title bg-white text-start text-primary pe-3">About Us</h6>
    <h1 class="mb-4"><?php echo $all_about_key['b_title']; ?></h1>
    <p class="mb-4"><?php echo $all_about_key['b_description']; ?></p>
    <br>
    <br>
    <div class="row gy-2 gx-4 mb-4">
        <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $all_about_key['b_category']; ?></p>
        </div>
        <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $all_about_key['b_category']; ?></p>
        </div>
        <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $all_about_key['b_status']; ?></p>
        </div>
        <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $all_about_key['b_category']; ?></p>
        </div>
        <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $all_about_key['b_category']; ?></p>
        </div>
        <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i><?php echo $all_about_key['b_status']; ?></p>
        </div>
        <br><br><br>
        <a class="btn btn-primary py-3 px-5 mt-2" href="<?php echo base_url('testimonial'); ?>">Read More</a>
    </div>
<?php } ?>
</div>
</div>
</div>
<!-- About End -->
<!-- Categories Start -->
<?php if (!empty($all_skilled)) : ?>
        <div class="container-xxl py-5 category">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">Categories2</h6>
                    <h1 class="mb-5">Courses Categories</h1>
                </div>
                <div class="row g-3">
                    <div class="<?= count($all_skilled) < 4 ? 'col-lg-12 col-md-12' : 'col-lg-7 col-md-6'; ?>">
                        <div class="row g-3">
                            <?php
                            $reserve_block = NULL;
                            $counter_id = 1;
                            $wow_delay = 0.1;
                            ?>
                            <?php foreach ($all_skilled as $all_skilled_item) : ?>
                                <?php
                                if ($counter_id === 4) {
                                    $reserve_block = $all_skilled_item;
                                    break;
                                }
                                ?>
                                <div class="<?= $counter_id === 1 ? 'col-lg-12 col-md-12' : 'col-lg-6 col-md-12'; ?> wow zoomIn" data-wow-delay="<?= $wow_delay; ?>s">
                                    <a class="position-relative d-block overflow-hidden">
                                        <img style="width: 100%; <?= $counter_id === 1 ? 'height: 350px;' : 'height: 200px;'; ?>object-fit: cover;" class="img-fluid" src="<?php echo base_url('uploads/news/' . $all_skilled_item["s_img"]); ?>" alt>
                                        <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3">
                                            <h5 class="m-0"><?= $all_skilled_item["s_category"]; ?></h5>
                                            <small class="text-primary"><?= $all_skilled_item["s_title"]; ?></small>
                                        </div>
                                    </a>
                                </div>
                                <?php
                                $wow_delay += 0.1;
                                $counter_id++;
                                ?>
                            <?php endforeach; ?>
                        </div>
                    </div>

                    <?php if (!empty($reserve_block)) : ?>
                        <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="<?= $wow_delay; ?>s">
                            <a class="position-relative d-block h-100 overflow-hidden">
                                <img class="img-fluid position-absolute w-100 h-100" src="<?php echo base_url('uploads/news/' . $reserve_block['s_img']); ?>" alt style="object-fit: cover;">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3">
                                    <h5 class="m-0"><?= $reserve_block['s_category']; ?></h5>
                                    <small class="text-primary"><?= $reserve_block['s_title'] ?></small>
                                </div>
                            </a>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <!-- Categories End -->


<!-- Categories Start -->

<!-- Courses Start -->
<div class="container-xxl py-5">
<div class="container">
<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
<h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
<h1 class="mb-5">Popular Courses</h1>
</div>
<div class="row g-4 justify-content-center">
<?php foreach ($all_popular as $all_popular_key) { ?>
    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
        <div class="position-relative overflow-hidden">
            <?php if ($all_popular_key['p_img']) { ?>
                <img class="img-fluid popimg" src="<?php echo base_url('uploads/news/' . $all_popular_key['p_img']); ?> " alt="">
            <?php } else { ?>
                <img class="img-fluid" src="<?php echo base_url('public/user/'); ?>img/course-2.jpg" alt="">
            <?php   } ?>
            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
               
                
            </div>
        </div>
        <div class="course-item bg-light">
            <div class="text-center p-4 pb-0">
                <h3 class="mb-0"><?php echo $all_popular_key['p_price']; ?></h3>
                
                <h5 class="mb-4"><?php echo $all_popular_key['p_description']; ?></h5>
                <h5 class="mb-4"><?php echo $all_popular_key['p_category']; ?></h5>
            </div>
            <div class="d-flex border-top">
                <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-tie text-primary me-2"></i><?php echo $all_popular_key['p_name']; ?></small>
                <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i><?php echo $all_popular_key['p_date']; ?></i></small>
                <small class="flex-fill text-center py-2"><i class="fa fa-graduation-cap text-primary me-2"></i><?php echo $all_popular_key['p_student']; ?></small>
            </div>
        </div>
    </div>
<?php  } ?>
</div>
</div>
</div>
<!-- Courses End -->


<!-- Team Start -->
<div class="container-xxl py-5">
<div class="container">
<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
<h6 class="section-title bg-white text-center text-primary px-3">Instructors</h6>
<h1 class="mb-5">Expert Instructors</h1>
</div>
<div class="row g-4">
<?php foreach ($experts_news as $get_experts_news_key) { ?>
    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
        <div class="team-item bg-light">
            <div class="overflow-hidden">
            <a class="position-relative d-block overflow-hidden" href="<?php echo base_url('experts_single/' .$get_experts_news_key['e_id']); ?>">
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
                <h5 class="mb-0"><?php echo  $get_experts_news_key['e_title']; ?></h5>
                <small><?php echo   $get_experts_news_key['e_category']; ?></small>
            </div>
        </div>
    </div>
<?php } ?>
</div>
</div>
</div>
<!-- Team End -->
<!-- Service Start -->
<div class="container-xxl py-5">
<div class="container">
<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
<h6 class="section-title bg-white text-center text-primary px-3">Categories</h6>
<h1 class="mb-5">Expert Categories</h1>
</div>
<div class="row g-4">
<?php foreach ($get_category as $get_category_key) { ?>
    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
        <div class="service-item text-center pt-3">
            <div class="p-4">
                <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
                <h5 class="mb-3"><?php echo $get_category_key['c_name']; ?></h5>
                <p></p>
            </div>
        </div>
    </div>
<?php } ?>
</div>
</div>
</div>
<!-- Service End -->

<!-- Testimonial Start -->
<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
<div class="container">
<div class="text-center">
<h6 class="section-title bg-white text-center text-primary px-3">Testimonial</h6>
<h1 class="mb-5">Our Students Say!</h1>
</div>
<div class="owl-carousel testimonial-carousel position-relative">
<?php foreach ($get_all_news as $get_all_news_key) { ?>
    <div class="testimonial-item text-center">
        <?php if ($get_all_news_key['n_img']) { ?>
            <img style="width: 80px; height: 80px;" class="border rounded-circle p-2 mx-auto img_student " src="<?php echo base_url('uploads/news/' .  $get_all_news_key['n_img']); ?>">
        <?php } else { ?>
            <img class="border rounded-circle p-2 mx-auto img_student" src="<?php echo base_url('public/user/'); ?>img/testimonial-1.jpg" style="width: 80px; height: 80px;">
        <?php  } ?>
        <h5 class="mb-0"><?php echo  $get_all_news_key['n_title']; ?></h5>
        <p><?php echo $get_all_news_key['n_category']; ?></p>
        <div class="testimonial-text bg-light text-center p-4">
            <p class="mb-0"><?php echo  $get_all_news_key['n_description']; ?></p>
        </div>
    </div>
<?php } ?>
</div>
</div>
</div>
<!-- Testimonial End -->


<!-- Footer Start -->
<?php $this->load->view('user/includes/footer'); ?>

<?php $this->load->view('user/includes/footer_script'); ?>


<!-- JavaScript Libraries -->