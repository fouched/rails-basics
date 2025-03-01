class HomeController < ApplicationController

  def index
    # render plain: "Hello Fouche! Jou rowwe bliksem!"
    # render html: "<h1>Hello World!</h1>".html_safe

    msg = "<h1>Hello World!</h1>".html_safe
    msg += "<h2>Hello World!</h2>".html_safe
    msg += "<h3>Hello World!</h3>".html_safe
    msg += "<h4>Hello World!</h4>".html_safe
    msg += "<h5>Hello World!</h5>".html_safe

    render html: msg.html_safe
  end

  def querystring
    message = ""
    if params[:message]
      message += "<h1>" + params[:message] + "</h1>"
    else
      message += "<h1>No value supplied</h1>"
    end

    if params[:country]
      message += "<h1>" + params[:country] + "</h1>"
    else
      message += "<h1>No values supplied</h1>"
    end

    message += "<h1>Controller: " + params[:controller] + "</h1>"
    message += "<h1>Action: " + params[:action] + "</h1>"

    render html: message.html_safe

  end

  def modeldemo
    @msg = "<h1>Hello World!</h1>"
    @msg += "<h2>Hello World!</h2>"
    @msg += "<h3>Hello World!</h3>"
    @msg += "<h4>Hello World!</h4>"
    @msg += "<h5>Hello World!</h5>"
  end

  def datetime
    @current_date = DateTime.now
  end

  def conditional_rendering
    @data = {
      'name': "Jimmy Anderson",
      'isVisible': true,
      'loggedIn': false,
      'countryCode': "ZA",
      'workExperience': 5,
      'province': nil
    }
  end

  def loops
    @products = []
    @products.push({ 'productId': 1, 'productName': "Product One", 'quantity': 10 })
    @products.push({ 'productId': 2, 'productName': "Product Two", 'quantity': 20 })
    @products.push({ 'productId': 3, 'productName': "Product Three", 'quantity': 30 })
    @products.push({ 'productId': 4, 'productName': "Product Four", 'quantity': 40 })
    @products.push({ 'productId': 5, 'productName': "Product Five", 'quantity': 50 })
    @products.push({ 'productId': 6, 'productName': "Product Six", 'quantity': 60 })
    @products.push({ 'productId': 7, 'productName': "Product Seven", 'quantity': 70 })
  end

end
