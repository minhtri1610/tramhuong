<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="text/css" rel="stylesheet" href="<?php echo URL_CSS;?>/bootstrap.min.css"  media="screen,projection"/>
    <link href="https://fonts.googleapis.com/css?family=Exo" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="<?= URL_JS.'/slick/slick-theme.css';?>"/>
    <link type="text/css" rel="stylesheet" href="<?= URL_JS.'/slick/slick.css';?>"/>
    <link href="<?= URL_CSS.'/all.min.css';?>" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="<?= THEME_URL.'/css/flick-slide.css';?>"/>
    <link type="text/css" rel="stylesheet" href="<?= THEME_URL.'/style.css';?>"/>
    <meta name="description" content="<?php bloginfo('description'); ?>">
    <title><?php wp_title(''); ?><?php if(wp_title('', false)) { echo ' :'; } ?> <?php bloginfo('name'); ?></title>
    <?php wp_head(); ?>
</head>
<body>
    <!-- include navbar -->
    <?php get_template_part('template-part/navbar'); ?>
