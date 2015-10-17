
  $(function(){
    $("#slides").slidesjs({
      width: 940,
      height: 250,
      navigation: false,
      start: 3,
      play: {
        auto: true
      }
    });
  });

  $(function(){
    $("#alert").show().delay(3000).fadeOut();
  });