class FooterlinksCell < Cell::Rails

  def show(args)
    @user    = args[:user]
    @numpilots = User.count
    @num_pending_lores = Lore.where(:approved => false).count
    @num_pending_timelines = Timeline.where(:approved => false).count
    @num_pending_links = Link.where(:approved => false).count
    render
  end

end
