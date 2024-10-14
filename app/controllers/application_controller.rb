class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  helper_method :current_user
  helper_method :lucas?

  before_action :set_tags

  def set_tags
    set_meta_tags title: "G0RD0.com",
                  description: "Brief thoughts and quick creations.",
                  keywords: "Lucas Gordon, G0RD0, gordon, lucas",
                  og: {
                    title: "G0RD0.com",
                    description: "Brief thoughts and quick creations.",
                    type: "website",
                    url: "https://www.g0rd0.com",
                    site_name: "G0RD0.com",
                    image: "https://opengraph.b-cdn.net/production/images/53d9ce2f-4db2-473a-8718-a9127c3939af.png?token=HLsOQ50udQaRTHVrB86t4yeCWS7Kj8kqjcku8Ks7fFU&height=650&width=1200&expires=33264928861"
                  },
                  twitter: {
                    card: "summary",
                    site: "@gordo",
                    title: "G0RD0.com",
                    description: "Brief thoughts and quick creations.",
                    image: "https://opengraph.b-cdn.net/production/images/53d9ce2f-4db2-473a-8718-a9127c3939af.png?token=HLsOQ50udQaRTHVrB86t4yeCWS7Kj8kqjcku8Ks7fFU&height=650&width=1200&expires=33264928861"
                  }
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def lucas?
    current_user && current_user.email == "lucas.gordon@queensu.ca"
  end
end
