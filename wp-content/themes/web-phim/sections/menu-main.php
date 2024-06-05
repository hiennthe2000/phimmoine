<header class="header" data-header>
    <div class="overlays"></div>
    <div class="container">
        <a href="<?= home_url(); ?>" class="logo">
            <?php $logo_web = get_field('logo_web', 'option'); ?>
            <img class="logo-main" src="<?= $logo_web['url'] ?>" alt="Filmlane logo">
            <p class="hero-subtitle"><?php the_field('name_website', 'option') ?></p>
        </a>
        <div class="header-actions">
            <div class="search">
                <form class="search-form" action="/" method="GET" role="form" _lpchecked="1">
                    <button type="submit" class="search-btn" value="Search"> <i class="fa fa-search"
                            aria-hidden="true"></i></button>
                    <input type="hidden" name="post_type" value="post">
                    <input type="text" name="s" id="s-home" autocomplete="off" placeholder="Tìm kiếm....">
                </form>
            </div>
        </div>
        <button class="menu-open-btn">
            <img src="<?php echo get_template_directory_uri(); ?>/images/bars.svg" alt="Filmlane logo">
        </button>
        <nav class="navbar">
            <div class="navbar-top">
                <a href="./index.html" class="logo">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/logo.svg" alt="Filmlane logo">
                </a>
                <button class="menu-close-btn" data-menu-close-btn>
                    <ion-icon name="close-outline"></ion-icon>
                </button>
            </div>
            <?php wp_nav_menu(['theme_location' => 'menu_main']); ?>
        </nav>
        <div class="menu-mobile">
            <div class="close">
                <button class="bt-close">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/cross.svg" alt="Filmlane logo">
                </button>
            </div>
            <div class="header-actions">
                <div class="search">
                    <form class="search-form" action="/" method="GET" role="form" _lpchecked="1">
                        <button type="submit" class="search-btn" value="Search"> <i class="fa fa-search"
                                aria-hidden="true"></i></button>
                        <input type="hidden" name="post_type" value="post">
                        <input type="text" name="s" id="s-home" autocomplete="off" placeholder="Tìm kiếm....">
                    </form>
                </div>
            </div>
            <?php wp_nav_menu(['theme_location' => 'menu_main']); ?>
        </div>
    </div>
</header>