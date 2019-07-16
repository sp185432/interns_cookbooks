
cpu_usage = node['cpu']['0']['mhz']

file 'D:\interpolation.txt' do
    content "with interns cookbook. CPU usage : \n#{cpu_usage}"
    action :create
end
