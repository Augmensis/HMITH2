  $(document).on("ready click", ".card-container", function(e){ 
    $(this).flip();
  });
  $(document).on("click", ".btn,a", function(e){ 
    e.stopPropagation();
  });
