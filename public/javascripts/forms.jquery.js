$(document).ready(function() {
    $(".remove-field").click(function(){
        $(this).parent().slideToggle()
    })

    $("#add-field").click( function(){
        $(".hidden_field:hidden:first").slideToggle()
    })

    $(".primary-image:checkbox")
})