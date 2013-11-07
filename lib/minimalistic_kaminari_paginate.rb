require "minimalistic_kaminari_paginate/version"

module MinimalisticKaminariPaginate
end

# load Rails/Railtie
begin
  require 'rails'
rescue LoadError
  #do nothing
end

require 'minimalistic_kaminari_paginate/helpers/action_view_extension'
require 'minimalistic_kaminari_paginate/hooks'

if defined? Rails
  require 'minimalistic_kaminari_paginate/railtie'
end