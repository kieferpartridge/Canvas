jQuery ->

  window.Menu = class Menu

    constructor: ->
      link = $("#menu")
      link.click =>
        @toggleMenu(link)


    showMenu: ->
      $(".menu").addClass("show")

    hideMenu: ->
      $(".menu").removeClass("show")

    toggleMenu: (link)->
      if link.hasClass("show")
        @showMenu()
      else if link.hasClass("hide")
        @hideMenu()
      link.toggleClass("show hide")

  new Menu()
