require 'ritucliproject'

module Ritucliproject
  module EntryPoint
    def self.call(args)
      cmd, command_name, args = Ritucliproject::Resolver.call(args)
      Ritucliproject::Executor.call(cmd, command_name, args)
    end
  end
end
