jQuery ->

  window.GridSwitch = class GridSwitch

    constructor: ->
      link = $("#grid")
      link.click =>
        @toggleGrid(link)


    showGrid: ->
      $("div.gridswitch").addClass("grid")

    hideGrid: ->
      $("div.gridswitch").removeClass("grid")

    toggleGrid: (link)->
      if link.hasClass("grid")
        @showGrid()
      else if link.hasClass("list")
        @hideGrid()
      link.toggleClass("grid list")


  new GridSwitch()
