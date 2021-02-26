class TimerController < ApplicationController
  include Matestack::Ui::Core::ApplicationHelper

  matestack_app Layouts::App

  def index
    render Pages::Timer
  end
end
