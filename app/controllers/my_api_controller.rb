class MyApiController < ApplicationController
	def index
		param=my_api_params		
		 Dashing.send_event('welcome',   { text:  param.to_s})
		render json: param
    end
	private

	def my_api_params
      params.require(:name)
    end
end
