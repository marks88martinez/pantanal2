# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
    console.log($('.page-numbers '))
    if ($('.page-numbers').length != 0)
        url = $('.page-numbers  .current').attr('href')
        console.log url
    # $(window).scroll ->
    #     if $('window').scrollTop() > $(document).height() - $(window).height() - 50
    #         alert "FUNKA"