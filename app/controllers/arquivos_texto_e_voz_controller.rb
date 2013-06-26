# -*- encoding : utf-8 -*-

class ArquivosTextoEVozController < ApplicationController
	def index
		
	end

	def show
		
	end

	def new
		@arquivo_texto_e_voz = ArquivoTextoEVoz.new
	end

	def create
		@arquivo_texto_e_voz = ArquivoVoz.new params[:arquivo_texto_e_voz]
		@arquivo_texto_e_voz.user_id = current_user.id
		size = params[:arquivo_texto_e_voz][:voz].size
		limit = 30
		if size > limit.megabytes
			flash[:error] = "O arquivo deve ser menor que #{limit}MB"
			render :new
		else
			if @arquivo_texto_e_voz.save
				flash[:success] = "Cadastro de arquivo feito com sucesso."
				redirect_to root_path
			else
				flash[:error] = "Erro ao cadastrar palavra."
				render :new
			end
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
