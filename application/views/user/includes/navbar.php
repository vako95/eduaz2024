<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
    <a href="<?php echo base_url('index'); ?>" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
        <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>sTIMUL</h2>
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
            <a href="<?php echo base_url('index'); ?>" class="nav-item nav-link active"><?php echo $this->lang->line('home'); ?></a>
            <a href="<?php echo base_url('about'); ?>" class="nav-item nav-link"><?php echo $this->lang->line('about'); ?></a>
            <a href="<?php echo base_url('courses'); ?>" class="nav-item nav-link"><?php echo $this->lang->line('courses'); ?></a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><?php echo $this->lang->line('pages'); ?></a>
                <div class="dropdown-menu fade-down m-0">
                    <a href="<?php echo base_url('team'); ?>" class="dropdown-item">Our Team</a>
                    <a href="<?php echo base_url('testimonial'); ?>" class="dropdown-item">Testimonial</a>
                   
                </div>
            </div>
            <a href="<?php echo base_url('contact'); ?>" class="nav-item nav-link"><?php echo $this->lang->line('contact'); ?></a>
        </div>
        <li>
            <select onchange="javascript:window.location.href='<?php echo base_url(); ?>LanguageSwitcher/switchLang/'+this.value;">
            <option value="az" <?php if ($this->session->userdata('site_lang') == 'az') echo 'selected="selected"'; ?>>AZ</option>
                <option value="en" <?php if ($this->session->userdata('site_lang') == 'en') echo 'selected="selected"'; ?>>EN</option>
                
                <option value="ru" <?php if ($this->session->userdata('site_lang') == 'ru') echo 'selected="selected"'; ?>>RU</option>
            </select>
        </li>
        <a href="<?php echo base_url('contact'); ?>" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block"><?php echo $this->lang->line('join now'); ?><i class="fa fa-arrow-right ms-3"></i></a>
    </div>

</nav>