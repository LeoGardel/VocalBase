# -*- encoding : utf-8 -*-

class ApplicationController < ActionController::Base
	before_filter :set_user_for_not_signed_in
	protect_from_forgery

	def after_sign_in_path_for(resource)
		root_path
	end

	private

		def set_user_for_not_signed_in
			if !user_signed_in?
				@user = User.new
			end
		end
end
