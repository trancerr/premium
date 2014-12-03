 <?php if (!isset($this->request->get['route']) || (isset($this->request->get['route']) && $this->request->get['route'] == 'common/home')) { ?>


<div class="box" id="box-box">
<div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
   <ul id="mycarousell" class="jcarousel jcarousel-skin-tango">
      <?php foreach ($products as $product) { ?>
      <li>
      <div>
	 <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/premium/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <?php if ($product['thumb']) { ?>
		<div class="sticker"><img src="catalog/view/theme/premium/image/new.png"></div>
        <div class="bw"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
<div class="back-nav">
<div class="name-product">  <?php if (strlen($product['name']) > 40) { ?>  <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo utf8_substr($product['name'], 0, 40) . '...'; ?></a>  <?php } else { ?>  <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>  <?php } ?></div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>        
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button-product" /></div>
</div>
      </div>
      </li>
      <?php } ?>
   </ul>
</div>
</div>
 

 <script type="text/javascript">

    jQuery(document).ready(function() {
      jQuery('#mycarousell').jcarousel({
       
        wrap: 'last', 
        visible: 5 , 
        scroll: 1
      });
    });

</script>

     <?php } else { ?>
<div class="box">
<div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
	 <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <?php if ($product['thumb']) { ?>
		<div class="sticker"><img src="catalog/view/theme/default/image/new.png"></div>
        <div class="bw"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
<div class="back-nav">
<div class="name-product">  <?php if (strlen($product['name']) > 50) { ?>  <a href="<?php echo $product['href']; ?>"><?php echo utf8_substr($product['name'], 0, 40) . '...'; ?></a>  <?php } else { ?>  <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>  <?php } ?></div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>        
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button-product" /></div>
</div>
      </div>
      <?php } ?>
    </div>
</div>
</div>



<?php } ?>  


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 