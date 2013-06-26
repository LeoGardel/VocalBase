# -*- encoding : utf-8 -*-

class PaisEstadoController < ApplicationController
  def estado_select
  	render partial: 'estado_select'
  end
end
