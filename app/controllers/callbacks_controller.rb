class CallbacksController < Devise::OmniauthCallbacksController
  before_filter :check_ng_person

  def google_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  private

  def check_ng_person
    if request.env['omniauth.auth']['extra']['raw_info']['hd'] != 'netguru.pl'
      flash[:error] = 'You are not netguru player, dude!'
      redirect_to new_user_session_path
    end
  end
end
