class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]
  before_action :set_edit_user, only: [:edit, :update]
  before_action :authenticate_user!

  # GET /users/1
  def show
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  def update
  respond_to do |format|
    if @user.update(user_params)
    format.html { redirect_to @user, notice: 'Usuário salvo com sucesso!' }
    format.json { render :show, status: :ok, location: @user }
    else
    format.html { render :edit }
    format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
  end

  # DELETE /users/1
  def destroy
  # @user = User.find(params[:id])
  @user.destroy
  respond_to do |format|
    format.html { redirect_to users_url, notice: 'Usuário excluido com sucesso!' }
    format.json { head :no_content }
  end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :state)
  end

  def set_edit_user
    @user = User.find(current_user.id)
  end
end
