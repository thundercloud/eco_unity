class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         #:registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable


  #if Rails.env.production?
  #  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  #else
  #  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :registerable 
  #end       


end
