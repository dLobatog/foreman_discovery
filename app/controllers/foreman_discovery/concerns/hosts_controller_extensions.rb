module ForemanDiscovery
  module Concerns
    module HostsControllerExtensions
      extend ActiveSupport::Concern
      included do
        before_action :set_discovered_params
      end

      # Change params to what the hosts controller expects. Certain methods
      # in the hosts controller like all the _selected methods, taxonomy_scope,
      # etc.. expect a params[:host] to work.
      def set_discovered_params
        return unless request.path.match(/discovered_hosts/).present?
        params[:host] ||= params[:discovered_host]
      end
    end
  end
end
