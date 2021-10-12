class MessagesController < ApplicationController

	def show
		@messages = Message.find(params[:id])
		# render json: count = %x{wc -l #{@messages}}.split.first.to_i
		# render json: @messages[:id]

		# puts
		# @count = %x{wc -l < "#{@messages[:id]}"}.to_i
		# render json: hash[:id].count
		# if count > 1
		# 	@messages[:read] == true || false
			
		render json: @messages
		# render json: @messages[:read] == false
		#
		# @messages.toggle(:read)
		# 	 render json: @messages
		# else
		# 	render json: "You already request this message"
		# end
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


