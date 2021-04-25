module LocaleFlash
  class Railtie < ::Rails::Railtie
    initializer 'locale_flash.setup' do
      ActiveSupport.on_load(:action_controller_base) do
        ::ActionController::Base.include LocaleFlash::Rails::ActionController
      end
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.include LocaleFlash::Rails::ActionView
      end
    end
  end
end
