  $(document).on("ready click", ".card-container", function(e){ 
    $(this).flip();
  });
  $(document).on("click", ".btn,p", function(e){ 
    e.stopPropagation();
  });
