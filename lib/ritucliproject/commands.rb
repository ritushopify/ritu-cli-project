require 'ritucliproject'

module Ritucliproject
  module Commands
    Registry = CLI::Kit::CommandRegistry.new(
      default: 'help',
      contextual_resolver: nil
    )

    def self.register(const, cmd, path)
      autoload(const, path)
      Registry.add(->() { const_get(const) }, cmd)
    end

    register :Example, 'example', 'ritucliproject/commands/example'
    register :Help,    'help',    'ritucliproject/commands/help'
  end
end
