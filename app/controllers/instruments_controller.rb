class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    if @instrument.save
      redirect_to instruments_path, notice: "instrumento criado co sucesso!"
    else
      render :new # Render o formulário de novo caso tenha dado algum erro de validação
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  private

  def instrument_params
    params.require(:instrument).permit(:instrument_questions, :question_1, :question_2, :question_3, :question_4, :question_5)
  end
end
