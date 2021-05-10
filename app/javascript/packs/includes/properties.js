$(function(){ 
  // for reveal btn phone/number 
  $("#show-tel").on("click", function(){
    const $this = $(this);
    $this.find("span").text( $this.data("number") );
  });

  // for reveal btn showmore/description 
  $("#toggleDetails").on("click", function(){
    const details = $("#prop-details");
    details.toggleClass("open");
    if(details.hasClass("open")){
      $(this).text("Show More");
    } else {
      $(this).text("Show Less");
    }
  }); 
  
  // Send email with modal
  $("#send-message-to-agent").on("click", function(){
    const agent_id = $("#agent_id").val(),
          first_name = $("#message-first-name").val(),
          last_name = $("#message-last-name").val(),
          email = $("#message-email").val(),
          message = $("#message-text").val();

    $.ajax({
      url: "/agent/message",
      method: "POST",
      dataType: "json",
      data: {
        agent_id: agent_id ,
        first_name: first_name,
        last_name: last_name,
        email: email,
        message: message
      },
      success: function(data){
        $('#contact-modal form').remove();
        $('#send-message-to-agent').remove();
        $('#contact-modal .modal-body').html("<p> your message has been sent successfully!</p>");
      }
      
    });  

  });
  // for modal to btn email
  $('#contact-modal').on('show.bs.modal', function (event) {
    const button = $(event.relatedTarget);
    const modal = $(this);
  });
});