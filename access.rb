$KCODE = 'u'

require "rubygems"
require "memcache"

server = ['localhost:11211']
option = {}

cache = MemCache.new(server,option)

#データ保存
cache['key1'] = 123
cache['key2'] = "あいうえお"
cache['key3'] = %w(hoge fuga)
cache['key4'] = {:foo => 1, :bar => "a"}
#データ読み出し
p cache['key1']
p cache['key2']
p cache['key3']
p cache['key4']
