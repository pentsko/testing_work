class MessagesController < ApplicationController


	def show
		@messages = Message.find(params[:id])
		render json: @messages
		end

	def create
		@messages = Message.new(message_params)


		if @messages.save
			render json: "http://localhost:3000/messages/#{@messages[:id].to_s}"
			#render json: "http://localhost:3000/messages/#{JSON.(@messages[:id])}", status: :created
		else
			render json: @messages.errors, status: :unprocessable_enitity
		end
	end

	private


	def message_params
		params.require(:messages).permit(:body)

		# @id = message_params[id]
		# @id = respond_to do |el|
		# 	el.json { render :json => {:id => @messages.id} }
		# end
	end


end

# find_by(params[:id])
