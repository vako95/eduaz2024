<?php $this->load->view('user/includes/headerStyle'); ?>
<?php $this->load->view('user/includes/navbar'); ?>
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
</style>
<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown"><?php echo $this->lang->line('courses'); ?></h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a class="text-white" href="<?php echo base_url('index') ?>"><?php echo $this->lang->line('home'); ?></a></li>
                        <li class="breadcrumb-item"><a class="text-white" href="<?php echo base_url('about') ?>"><?php echo $this->lang->line('about us'); ?></a></li>
                      
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->



<?php if (!empty($all_skilled)) : ?>
    <div class="container-xxl py-5 category">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3"><?php echo $this->lang->line('categories'); ?></h6>
                <h1 class="mb-5"><?php echo $this->lang->line('сourse cateories'); ?></h1>
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
<!-- Categories Start -->


<!-- Courses Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3"><?php echo $this->lang->line('courses'); ?></h6>
            <h1 class="mb-5"><?php echo $this->lang->line('popular courses'); ?></h1>
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
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0"><?php echo $get_experts_news_key['e_status']; ?></p>
                       
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