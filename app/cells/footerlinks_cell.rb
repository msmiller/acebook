class FooterlinksCell < Cell::Rails

  def show
    @numpilots = User.count
    render
  end

end
