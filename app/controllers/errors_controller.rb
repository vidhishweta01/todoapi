class ErrorsController < ApplicationController
  def not_found
    render json: {
      errors: '404 Not Found Please make sure your in the right route'
    }
  end

  def internal_server_error
    render json:
      { errors: '500 internal_server_error',
        contact:
         [
           { Twitter: 'https://twitter.com/vidhishweta01' },
           { LinkedIn: 'https://www.linkedin.com/in/vidhishweta01/' },
           { Github: 'https://github.com/vidhishweta01' },
           { Email: 'vidhi.shweta01@gmail.com' }
         ] }
  end
end
