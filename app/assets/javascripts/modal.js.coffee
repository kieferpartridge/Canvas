jQuery ->

  window.Modal = class Modal

    constructor: ->
      link = $("#modal")
      link.click =>
        @toggleModal(link)


    showModal: ->
      $(".modal").addClass("show")

    hideModal: ->
      $(".modal").removeClass("show")

    toggleModal: (link)->
      if link.hasClass("show")
        @showModal()
      else if link.hasClass("hide")
        @hideModal()
      link.toggleClass("show hide")

  new Modal()
