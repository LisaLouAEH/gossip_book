class UsersController < ApplicationController
  
  def index
    @users = User.all
    puts "###########################################################"
    puts "###########################################################"
    puts "coucou j'essaye de me connecter a ma page index utilisateur #{@users}"
    puts "###########################################################"
    puts "###########################################################"
  end
  def new
    @user = User.new
    puts "###########################################################"
    puts "###########################################################"
    p "Je propooooooose de creer un nouvel utilisateur #{@user}"
    puts "###########################################################"
    puts "###########################################################"
  end
  def create
    @user = User.create(password: params[:user][:password], name: params[:user][:name], email: params[:user][:email])
    puts "###########################################################"
    puts "###########################################################"
    p "Je suis créé je vais me ranger tout seule dans la DB !!!! #{@user.name}"
    p "Je me compose de #{@user.name}, #{@user.email} mon pw = #{@user.password} "
    puts "###########################################################"
    puts "###########################################################"
  end
  def show
    @user = User.find(params[:id])
    puts "###########################################################"
    puts "###########################################################"
    puts "Je suis #{@user.name} et j'en suis fière"
    puts "###########################################################"
    puts "###########################################################"
  end
  
  def edit
    @user = User.find(params[:id])
    puts "###########################################################"
    puts "###########################################################"
    puts "Je suis une méthode qui sert a rien ! #{@user.name}"
    puts "###########################################################"
    puts "###########################################################"
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    puts "###########################################################"
    puts "###########################################################"
    puts "Je suis en train de muter ! #{@user}"
    puts "###########################################################"
    puts "###########################################################"
  end

  def destroy
    puts "###########################################################"
    puts "###########################################################"
    puts "Je suis en train de m'auto-detruire !"
    puts "###########################################################"
    puts "###########################################################"
  end

end
