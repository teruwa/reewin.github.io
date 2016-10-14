var timer = false;

var areaWidth = $(window).width();
var areaHeight = 0;

var imageWidth = 1200;
var imageHeight = 420;

var targetWidth = imageWidth;
var targetHeight = imageHeight;

var targetXPosition = 0;
var targetYPosition = 0;

var imageRatio = imageWidth / imageHeight; 
var targetRatio = areaWidth / areaHeight;

var targetCssName = "";
var targetCssValue = "";


function setTargetImage(windowWidth){
    
     if(windowWidth < 768){  
         
           areaHeight = 160;
            
     }else if(windowWidth < 992){
           
           areaHeight = 240;
          
     }else if(windowWidth < 1200){
        
           areaHeight = 360;
           
     }else {
        
           areaHeight = 420;
           
     }
     
    targetRatio = areaWidth / areaHeight;
    
    
    if(targetRatio < imageRatio){
        
        // 高さにあわす
        targetHeight = areaHeight;
        
        targetWidth = targetHeight * imageRatio;
        
        targetCssName = 'margin-left';
        
        targetCssValue = (areaWidth - targetWidth) / 2;
        
    }else{
        
        // 幅にあわす
        targetWidth = areaWidth;
        
        targetHeight = targetWidth / imageRatio;
        
        targetCssName = 'margin-top';
        
        targetCssValue = (areaHeight - targetHeight) / 2;
    }
    
    $(".item-mask").find("img").each(function(){
        
        $(this).width(targetWidth ).height(targetHeight).css(targetCssName,targetCssValue+'px');
    
    });
    
}


$(function() {

    setTargetImage(areaWidth);

});


$(window).resize(function() {

    if (timer !== false) {
        
        clearTimeout(timer);
    
    }

    timer = setTimeout(function() {
        
       areaWidth = $(window).width();
       
       setTargetImage(areaWidth);
        
    }, 100);
    
});