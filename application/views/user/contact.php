<?php $this->load->view('user/includes/headerStyle'); ?>

<?php $this->load->view('user/includes/navbar'); ?>
<!-- Spinner End -->


<!-- Navbar Start -->

<!-- Navbar End -->


<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown">Contact</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                        <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                        <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->


<!-- Contact Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Contact Us</h6>
            <h1 class="mb-5">Contact For Any Query</h1>
        </div>

        <div class="row g-4">
            <div class="col-lg-4 col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                <h5>Get In Touch</h5>
                <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                <div class="d-flex align-items-center mb-3">
                    <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
                        <i class="fa fa-map-marker-alt text-white"></i>
                    </div>
                    <div class="ms-3">
                        <h5 class="text-primary">Office</h5>
                        <a style="color:black;" href="https://www.google.com/maps/place/Caspian+Plaza/@40.38534,49.828682,16z/data=!4m6!3m5!1s0x40307d9be60052ab:0xd7852fa710c6b11a!8m2!3d40.3853403!4d49.8286822!16s%2Fg%2F11clvgws0m?hl=en&entry=ttu">
                            <p style="color:black;" class="mb-2">44 Jafar Jabbarli street, Baku 1065</p>
                        </a>
                    </div>
                </div>
                <div class="d-flex align-items-center mb-3">
                    <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
                        <i class="fa fa-phone-alt text-white"></i>
                    </div>
                    <div class="ms-3">
                        <h5 class="text-primary">Mobile</h5>
                        <p style="color: #99a3a4;" class="mb-0"><a class="topphones" href="tel:+994506610117"><b style="color: #99a3a4;">(050)</b> <b style="color: #99a3a4;">6610117</b></a></p>
                    </div>
                </div>
                <div class="d-flex align-items-center">
                    <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
                        <i class="fa fa-envelope-open text-white"></i>
                    </div>
                    <div class="ms-3">
                        <h5 class="text-primary">Email</h5>
                        <p style="color:black;" class=""> <a style="color:black;" href="mailto:office@stimul-az.com">office@stimul.az</a></p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 wow fadeInUp" data-wow-delay="0.3s">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.060832029736!2d49.82610727487535!3d40.3853443575508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307d9be60052ab%3A0xd7852fa710c6b11a!2sCaspian%20Plaza!5e0!3m2!1sen!2saz!4v1702666959886!5m2!1sen!2saz" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

            <div class="col-lg-4 col-md-4 wow fadeInUp" data-wow-delay="0.5s">
                <?php if ($this->session->flashdata('err')) { ?>
                    <div class="alert alert-danger alert-dismissible text-center">
                        <strong><?php echo $this->session->flashdata('err'); ?></strong>
                    </div>
                <?php } ?>

                <?php if ($this->session->flashdata('success')) { ?>
                    <div class="alert alert-success alert-dismissible text-center">
                        <strong><?php echo $this->session->flashdata('success'); ?></strong>
                    </div>
                <?php } ?>
                <form method="post" enctype="multipart/form-data" action="<?php echo base_url('contactAct'); ?>">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input name="name" type="text" class="form-control" id="name" placeholder="Your Name">
                                <label for="name">Your Name</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input name="email" type="email" class="form-control" id="email" placeholder="Your Email">
                                <label for="email">Your Email</label>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-floating">
                                <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject">
                                <label for="subject">Subject</label>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-floating">
                                <textarea name="message" class="form-control" placeholder="Leave a message here" id="message" style="height: 150px"></textarea>
                                <label for="message">Message</label>
                            </div>
                        </div>
                        <div class="col-12">
                            <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Contact End -->

<?php $this->load->view('user/includes/footer'); ?>
<?php $this->load->view('user/includes/footer_script'); ?>