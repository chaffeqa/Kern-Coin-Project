// For associated model forms
$(function() {
    $('form a.add_child').click(function() {
        var assoc = $(this).attr('data-association');
        var content = $('#' + assoc + '_fields_template').html();
        var regexp = new RegExp('new_' + assoc, 'g');
        var new_id = new Date().getTime();

        $(this).parent().before(content.replace(regexp, new_id));
        return false;
    });

    $('form a.remove_child').live('click', function() {
        var hidden_field = $(this).prev('input[type=hidden]')[0];
        if(hidden_field) {
            hidden_field.value = '1';
        }
        $(this).parents('.fields').hide();
        return false;
    });

    

    $('div.sf ul').superfish();

    $('a.gallery').colorbox();
    

   

    var preview = $('a#preview');
    preview.live('click', function() {
        $("div.admin").toggleClass("preview");
    });

    preview.live('click', function() {
        if (preview.text() == 'Preview Page') {
            preview.text('Admin View');
        }
        else {
            preview.text('Preview Page');
        }
    });
});

