class MessagesController < ApplicationController

	def show
		@messages = Message.all
		render json: @messages, only: [:id]

		end

	def create
		@message = Message.new(message_params)

		if @message.save
			render json: @message, status: :created, location: @message
		else
			render json: @message.errors, status: :unprocessable_enitity
		end
	end

	private

	def message_params
		params.require(:message).permit(:body)
	end



end

# find_by(params[:id])