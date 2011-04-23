
$(document).ready
    (
        function () {
            $('ul.nav a').click(function () {
                var curChildIndex = $(this).parent().prevAll().length + 1;                                
                $(this).parent().parent().children('.current').removeClass('current');
                $(this).parent().addClass('current');
                $(this).parent().parent().next('.tabcontainer').children('.current').slideUp('fast', function () {
                    $(this).removeClass('current');
                    $(this).parent().children('div:nth-child(' + curChildIndex + ')').slideDown('normal', function () {
                        $(this).addClass('current');
                    });
                });
                return false;
            });
        }
    );
