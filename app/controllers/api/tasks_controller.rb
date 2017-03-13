class Api::TasksController < ApplicationController
  def index
    @tasks = Task.all
    render 'index', formats: 'json', handlers: 'jbuilder'
  end
end
