function crop(imageId, cropId, x, y, width, height) {
   
    $(cropId).update('<img id="' + cropId + '_img" src="' + $(imageId).getAttribute('src') + '" style="display:none" />');
    
    var scale_x = $(cropId).getWidth() / width;
    var scale_y = $(cropId).getHeight() / height;

    $(cropId).setStyle({ position: 'relative', overflow: 'hidden' });
   
    $(cropId + '_img').setStyle({
        position: 'absolute',
        display: 'block',
        left: (-x * scale_x) + 'px',
        top: (-y * scale_y) + 'px',
        width: ($(imageId).getWidth() * scale_x) + 'px',
        height: ($(imageId).getHeight() * scale_y) + 'px'
    });
}
