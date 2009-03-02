Comeback
========

Provides a mechanism for storing URLs to return to at a later time. Allows the
current URL, a custom URL, or the referer to be stored.

When a referer is stored, it is checked against the current page URL, and if
they're the same, then the referer won't be set and the default path will be
used instead.

The session key :return_to is used to store the URL.


Example
=======

In your controller, you first call #store_referer to save the referer to the
current page, and then to access it again, call #return_or_redirect_to and pass
it the same arguments you would pass to #redirect_to as the default in case a
referer has not been set:

  class MyController < ApplicationController
    def first_action
      store_referer
    end

    def second_action
      return_or_redirect_to root_path
    end
  end

You can also store the referer using a before filter:

  class MyController < ApplicationController
    before_filter :store_referer, :only => :first_action

    def first_action
    end
  end

The current page URL can also be stored instead of the referer:

  class MyController < ApplicationController
    def first_action
      store_location
      redirect_to login_path
    end
  end

Explicit URLs may also be stored:

  class MyController < ApplicationController
    def first_action
      store_location dashbaord_path
      redirect_to login_path
    end
  end
  

Copyright (c) 2008 Tyler Hunt, released under the MIT license
