resource_name :site

property :homepage, String, default: '<h1>Hello world!</h1>'

action :create do
  package 'httpd'

  service 'httpd' do
    action [:enable, :start]
  end

  file '/var/www/html/index.html' do
    content homepage
  end
end

action :delete do
  package 'httpd' do
    action :delete
  end
end

