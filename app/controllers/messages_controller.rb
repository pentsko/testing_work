class MessagesController < ApplicationController

	def show
		@messages = Message.find(params[:id])
		if render json: @messages
			@messages[:readed] = true
		else
			render json: "You already requested this massage"
			end
		end

	def create
		@messages = Message.new(message_params)


		if @messages.save
			render json: "http://localhost:3000/messages/#{@messages[:id].to_s}"
		else
			render json: @messages.errors, status: :unprocessable_enitity
		end
	end

	private


	def message_params
		params.require(:messages).permit(:body)
	end

end


