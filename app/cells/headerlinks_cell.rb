class HeaderlinksCell < Cell::ViewModel
  
  def show(options)
    @user    = options[:user]
    render
  end

end
