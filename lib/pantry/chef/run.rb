module Pantry
  module Chef

    class Run < Pantry::MultiCommand

      command "chef:run" do
        description "Run Chef on Clients"
        group "Chef"
      end

      performs [
        ConfigureChef,
        SyncCookbooks,
        SyncRoles,
        SyncEnvironments,
        SyncDataBags,
        RunChefSolo
      ]

      def receive_client_response(response)
        Pantry.ui.say("Chef on #{response.from} finished")
        Pantry.ui.say(response.body[5][0])
        Pantry.ui.say("")
      end

    end

  end
end
