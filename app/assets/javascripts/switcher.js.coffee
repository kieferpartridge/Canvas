jQuery ->

  window.Switcher = class Switcher

    constructor: ->
      link = $("#switcher")
      link.click =>
        @toggleSwitcher(link)


    showSwitcher: ->
      $("body").addClass("switcher")

    hideSwitcher: ->
      $("body").removeClass("switcher")

    toggleSwitcher: (link)->
      if link.hasClass("show")
        @showSwitcher()
      else if link.hasClass("hide")
        @hideSwitcher()
      link.toggleClass("show hide")

  new Switcher()
