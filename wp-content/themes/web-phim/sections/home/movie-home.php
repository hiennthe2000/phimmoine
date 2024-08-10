<main id="main">
    <article>
        <section class="upcoming">
            <div class="container">
                <?php get_template_part('sections/home/movie/movie-nominate'); ?>
                <div class="row">
                    <div class="col-lg-8">
                        <?php get_template_part('sections/home/movie/movie-new'); ?>
                    </div>
                    <div class="col-lg-4">
                        <?php get_template_part('sections/home/movie/movie-hot'); ?>
                        <?php get_template_part('sections/home/movie/movie-view'); ?>
                    </div>
                </div>

            </div>
        </section>
        <section class="content-page">
            <div class="container">
                <?php the_content() ?>
            </div>
            <button id="toggle-button"><span>Xem thêm</span></button>
        </section>
    </article>
</main>