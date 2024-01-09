<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3"><?php echo $this->lang->line('quick link'); ?></h4>
                <a class="btn btn-link" href="<?php echo base_url('index'); ?>"><?php echo $this->lang->line('home'); ?></a>
                <a class="btn btn-link" href="<?php echo base_url('about'); ?>"><?php echo $this->lang->line('about'); ?></a>
                <a class="btn btn-link" href="<?php echo base_url('contact'); ?>"><?php echo $this->lang->line('contact'); ?></a>

            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3"><?php echo $this->lang->line('contact'); ?></h4>
                <a style href="https://www.google.com/maps/place/Caspian+Plaza/@40.38534,49.828682,16z/data=!4m6!3m5!1s0x40307d9be60052ab:0xd7852fa710c6b11a!8m2!3d40.3853403!4d49.8286822!16s%2Fg%2F11clvgws0m?hl=en&entry=ttu"><p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>44 Jafar Jabbarli street, Baku 1065</p></a>
 
                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i><a style="color: white;" class="topphones" href="tel:+994506610117">(050) <b style="color: white;">6610117</b></a></p>

                <p class=""><i style="margin-left: 5px;" class="fa fa-envelope me-2"></i> <a style="color: white;" href="mailto:office@stimul-az.com">office@stimul.az </a></p> 
               
                <div class="d-flex pt-2">
                    <a class="btn btn-outline-light btn-social" href="https://twitter.com/STIMUL_AZ"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social" href="https://www.facebook.com/Stimul.edu.az"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social" href="https://www.youtube.com/@stimuleducationconsulting"><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-outline-light btn-social" href="https://az.linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3"><?php echo $this->lang->line('gallery'); ?></h4>
                <div class="row g-2 pt-2">
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="<?php echo base_url('public/user/'); ?>img/course-1.jpg" alt="">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="<?php echo base_url('public/user/'); ?>img/course-2.jpg" alt="">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="<?php echo base_url('public/user/'); ?>img/course-3.jpg" alt="">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="<?php echo base_url('public/user/'); ?>img/course-2.jpg" alt="">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="<?php echo base_url('public/user/'); ?>img/course-3.jpg" alt="">
                    </div>
                    <div class="col-4">
                        <img class="img-fluid bg-light p-1" src="<?php echo base_url('public/user/'); ?>img/course-1.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3"><?php echo $this->lang->line('newsletter'); ?></h4>
                <p><?php echo $this->lang->line('newssend'); ?></p>
                <div class="position-relative mx-auto" style="max-width: 400px;">
                    <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                    <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2"><?php echo $this->lang->line('signup'); ?></button>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright">
            <div class="row">

                <div class="col-md-6 text-center text-md-end">
                    <div class="footer-menu">
                        <a href="<?php echo base_url('index'); ?>"><?php echo $this->lang->line('home'); ?></a>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="<?php echo base_url('experts_single/7') ?>">sTIMUL</a>, 

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        <?php echo $this->lang->line('Designed By'); ?> <a class="border-bottom" href="">HTML Codex</a><br><br>
                        <?php echo $this->lang->line('distributed by'); ?> <a class="border-bottom" href="<?php echo base_url('experts_single/7') ?>">ThemeWagon</a>
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="<?php echo base_url('index') ?>"><?php echo $this->lang->line('home'); ?></a>
                            <a href="<?php echo base_url('contact') ?>"> <?php echo $this->lang->line('contact'); ?></a>
                            <a href=""><?php echo $this->lang->line('help'); ?></a>
                            <a href="<?php echo base_url('testimonial') ?>">FQAs</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>
<!-- Footer End -->


<!-- Back to Top -->

