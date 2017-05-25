jQuery(document).ready(function ($) {
    $(document).on('turbolinks:load', function () {
        $(".comment_link").on("click", function (e) {
            var text = $(this).parents(".caption").find(".question_text").text();
            $("#comment_form").text(text);
            $(".comment_text").val("");
            $("#comment_commentable_id").val($(this).attr("data-id"));
        });
    });
});