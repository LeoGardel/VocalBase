# -*- encoding : utf-8 -*-

class ArquivosVozController < ApplicationController
	before_filter :authenticate_user!, except: [:index, :show]

	def index
		@arquivos_voz = ArquivoVoz.all
	end

	def show
		@arquivo_voz = ArquivoVoz.find params[:id]
	end

	def new
		@arquivo_voz = ArquivoVoz.new
		@arquivo_voz.user_id = current_user.id
		@arquivo_voz.pais = current_user.pais
		@arquivo_voz.estado = current_user.estado
	end

	def create
		@arquivo_voz = ArquivoVoz.new params[:arquivo_voz]
		@arquivo_voz.user_id = current_user.id
		@arquivo_voz.formato = params[:arquivo_voz][:voz].original_filename.split(".").last
		size = params[:arquivo_voz][:voz].size
		limit = 0.8
		if size > limit.megabytes
			flash[:error] = "O arquivo deve ser menor que #{limit}MB"
			render :new
		else
			if @arquivo_voz.save
				flash[:success] = "Cadastro de palavra feito com sucesso."
				redirect_to root_path
			else
				flash[:error] = "Erro ao cadastrar palavra."
				render :new
			end
		end
	end

	def edit
		@arquivo_voz = ArquivoVoz.find params[:id]
	end

	def update
		@arquivo_voz = ArquivoVoz.find params[:id]
	end

	def destroy
		@arquivo_voz = ArquivoVoz.find params[:id]
		@arquivo_voz.destroy
		flash[:success] = "Arquivo deletado com sucesso."
	end
end
