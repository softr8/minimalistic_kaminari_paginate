module MinimalisticKaminariPaginate
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'minimalistic_kaminari_paginate' do |_app|
      MinimalisticKaminariPaginate::Hooks.init
    end
  end
end