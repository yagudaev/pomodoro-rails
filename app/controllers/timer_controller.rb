class TimerController < ApplicationController
  matestack_app Layouts::App

  def index
    render Pages::Timer
  end
end
