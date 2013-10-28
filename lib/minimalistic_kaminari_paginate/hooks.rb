module MinimalisticKaminariPaginate
  class Hooks
    def self.init
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.send :include, MinimalisticKaminariPaginate::ActionViewExtension
      end
    end
  end
end