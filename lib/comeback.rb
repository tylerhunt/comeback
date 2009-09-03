module Comeback
  def self.included(base)
    base.class_inheritable_accessor :comeback_session_key
    base.comeback_session_key = :comeback_to
  end

  def store_location(url=nil)
    session[comeback_session_key] ||= url ? url : request.url
  end

  def store_referer
    referer = request.env['HTTP_REFERER']
    store_location(referer) unless referer == request.url
  end

  def clear_location
    session[comeback_session_key] = nil
  end

  def return_or_redirect_to(*args)
    if session[comeback_session_key]
      redirect_to(session[comeback_session_key])
      clear_location
    else
      redirect_to(*args)
    end
  end
end
