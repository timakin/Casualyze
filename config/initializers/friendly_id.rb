module FriendlyId
  module Slugged
    def should_generate_new_friendly_id?
      return true if send(friendly_id_config.slug_column).nil? && !send(friendly_id_config.base).nil?
 
      change = :"#{friendly_id_config.base}_changed?"
      return true if respond_to?(change) && send(change)
 
      false
    end
  end
end