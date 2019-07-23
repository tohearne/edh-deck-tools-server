class CardsController < ProtectedController
  before_action :set_card, only: [:show, :update, :destroy]

  # POST /cards
  def create
    @card = current_user.cards.build(card_params)

    if @card.save
      render json: @card, status: :created
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
  end

  # # GET /cards
  # def index
  #   @cards = Card.all
  #
  #   render json: @cards
  # end
  #
  # # GET /cards/1
  # def show
  #   render json: @card
  # end

  # # PATCH/PUT /cards/1
  # def update
  #   if @card.update(card_params)
  #     render json: @card
  #   else
  #     render json: @card.errors, status: :unprocessable_entity
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = current_user.cards.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:deck_id, :is_commander, :card_id)
    end
end
