#Installing Rail
execute 'installing_rail' do
  command 'gem install rails'
end

execute 'rubygem_rail' do
  command 'rbenv rehash'
end
