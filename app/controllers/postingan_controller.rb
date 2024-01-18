class PostinganController < ApplicationController
  def index
    @array = Postingan.all
  end

  def detail
    @array = Postingan.find_by(id: params[:id])
  end

  def input 

  end

  def create
    @array = Postingan.new(judul: params[:judul], deskripsi: params[:deskripsi])
    @array.save

    flash[:pesan] = "Data Berhasil Disimpan!"

    redirect_to("/postingan")
  end
end
