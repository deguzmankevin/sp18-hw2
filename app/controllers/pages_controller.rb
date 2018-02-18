class PagesController < ApplicationController
  def home
  end

  def stringify
    stringify_instance = Stringify.new(
      params[:name],
      params[:adjective]
    )
    @text = stringify_instance.what_am_i
  end

  def age
  end

  def person
    @person = Person.new params[:name], params[:age]
  end
  
  def me
    @name = 'Kevin'
    @year = 'Junior'
    @from = 'Imperial Beach'
    @fun = 'I live 10 minutes from the US/Mexico border and I like to tell myself I\'m part Mexican'
    @excited = 'I\'m most excited to have a ton of fun learning how to make a dynamic website because I\'ve only ever made static websites! Also to see Ken Chen and meet people :)'
  end
end
