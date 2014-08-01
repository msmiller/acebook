class HeaderlinksCell < Cell::Rails

  def show(args)
    p args.inspect
    @user    = args[:user]
    render
  end

end
