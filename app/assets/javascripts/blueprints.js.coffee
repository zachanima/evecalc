# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  # Show only selected blueprint on click.
  $('div#blueprints a').click ->
    id = $(this).attr('href').substr(1)
    $('div.blueprint').hide()
    $('div#blueprint_' + id).show()
