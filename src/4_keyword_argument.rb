# frozen_string_literal: true

hash_arg = { key1: 'value1', key2: 'value2' }

def splat_arg(**kwargs)
  puts '********splat_arg********'
  puts kwargs
end

def keyword(key1:, key2:, **kwargs)
  puts '********keyword*******'
  puts key1
  puts key2
  puts kwargs
end

def non_splat(arg)
  puts '********non_splat********'
  puts arg
end

def one_half_keyword(key1:, **kwargs)
  puts '********one_half_keyword********'
  puts key1
  puts kwargs
end

def hash_check
  h = {key1: 'value1', key1: 'value2'}
  puts h
end

splat_arg(**hash_arg)
keyword(**hash_arg)
non_splat(hash_arg)
non_splat(**hash_arg)
one_half_keyword(**hash_arg)
keyword(key1: 'other_value1', **hash_arg)
hash_check
