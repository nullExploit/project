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

  def edit
    @array = Postingan.find_by(id: params[:id])
  end

  def update
    @array = Postingan.find_by(id: params[:id])
    @array.judul = params[:judul]
    @array.deskripsi = params[:deskripsi]
    @array.save

    flash[:pesan] = "Data Berhasil Disimpan!"
    redirect_to("/postingan")
  end

  def delete
    @array = Postingan.find_by(id: params[:id])
    @array.destroy

    flash[:pesan] = "Data Berhasil Dihapus!"
    redirect_to("/postingan")
  end
end
