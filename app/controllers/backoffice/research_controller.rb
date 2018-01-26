class Backoffice::ResearchController < BackofficeController
	def consumers
		@consumers = Consumer.pesquisar(params[:q], params[:page])
	end
end
