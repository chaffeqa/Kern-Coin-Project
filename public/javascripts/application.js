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

    $('form a.remove-new-child').live('click', function() {
        $(this).parents('.fields').remove();
        return false;
    });
    $('form a.remove-old-child').live('click', function() {
        var hidden_destroy_field = $(this).next('input.destroy-field');
        hidden_destroy_field.val(1);
        $(this).parents('.fields').hide();
        return false;
    });

    

    //	$('a.gallery').colorbox();
    

   

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

    // Hint Expander
    $(".expander").click(function() {
        $(this).parent().siblings(".expanded-hint").toggle(200, function(){});
    });
});


function setup_tree(options) {
  $(options.selector).tree({
    types : {
      "default" : {
        clickable  : true,
        renameable : false,
        deletable  : false,
        creatable  : false,
        draggable  : options.draggable
      }
    },
    callback : {
      onchange : function(NODE,TREE_OBJ) {
        // http://www.jstree.com/faq (see faq 4 on links in predefined html)
        document.location = $(NODE).children("a:eq(0)").attr("href");
      },
      onmove : function(NODE,REF_NODE,TYPE,TREE_OBJ,RB) {
        // might need to use rails' authenticity_token?
        $.ajax({
            url: options.post_url,
            type: 'POST',
            data: $.toJSON(TREE_OBJ.get(null, 'json')),
            contentType: 'application/json; charset=utf-8',
        });
      }
    }
  });
}
