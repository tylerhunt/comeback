module Comeback
  def clear_location
    session[:return_to] = nil
  end

  def store_location(url=nil)
    session[:return_to] ||= url ? url : request.url
  end

  def store_referer
    referer = request.env['HTTP_REFERER']
    session[:return_to] ||= referer unless referer == request.url
  end

  def return_or_redirect_to(*args)
    session[:return_to] ? redirect_to(session[:return_to]) : redirect_to(*args)
    session[:return_to] = nil
  end
end
