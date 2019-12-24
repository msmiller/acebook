class FooterlinksCell < Cell::Rails

  def show(args)
    @user    = args[:user]
    @numpilots = User.count
    @num_pending_lores = (Lore.count - Lore.where(:approved => true).count)
    @num_pending_timelines = (Timeline.count - Timeline.where(:approved => true).count)
    @num_pending_links = (Link.count - Link.where(:approved => true).count)
    render
  end

end
