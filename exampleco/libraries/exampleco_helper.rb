module exampleco
  module Helper

    #define the action
    def has_host_entry?
      cmd = test -z $(grep "10.0.2.1 webserver01" /etc/hosts)
    end
  end
end
