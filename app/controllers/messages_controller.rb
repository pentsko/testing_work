class MessagesController < ApplicationController


	def show
		@messages = Message.find(params[:id])
		render json: @messages
		end

	def create
		@messages = Message.new(message_params)

		# if @messages.save
		# 	render json: @messages, status: :created
		# else
		# 	render json: @messages.errors, status: :unprocessable_enitity
		# end
	end

	private
	def message_params
		params.require(:messages).permit(:body)
	end

end

# find_by(params[:id])
