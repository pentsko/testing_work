class MessagesController < ApplicationController

	def show
		@message = Message.find(params[:id])
		render json: {body: @message.body}
		end

	def create
		@message = Message.new(message_params)
		if @message.save
			render json: {link: "http://localhost:3000/messages/#{@message.id}"}
		else
			render json: @message.errors, status: :unprocessable_enitity
		end
	end

	private

	def message_params
		params.require(:messages).permit(:body)
	end

end


