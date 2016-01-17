class ConditionalFormsController < ApplicationController
  def choose
    model = OpenStruct.new
    @form = ChooseForm.new(model)

    if params[:choose].present? && @form.validate(params[:choose])
      @form.sync
      render 'success', locals: {model: model}
    else
      render status: :bad_request
    end
  end
end
