<!--File Template Mặc Định Của Wordpress-->
<?php
get_header();
while (have_posts()): the_post();
the_content();
endwhile; 
get_footer();
?>