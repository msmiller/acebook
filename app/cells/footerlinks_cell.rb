class FooterlinksCell < Cell::Rails

  def show(args)
    @user    = args[:user]
    @numpilots = User.count
    render
  end

end
