class MessagesController < ApplicationController

	def index
		@messages = Message.all
		render json: @messages, only: [:id]
		end



end