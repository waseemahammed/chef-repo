execute 'masquerade' do
 command 'iptables -t nat -A POSTROUTING -s 129.144.145.203/24 -j MASQUERADE'
end
