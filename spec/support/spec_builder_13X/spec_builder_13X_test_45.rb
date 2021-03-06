spec('1.3.0') do
	configuration('my-configuration') do
		profile 'general:debug'
		profile 'ios:debug'
		type 'debug'
	end
	target('my-target') do
		type :application
		source_dir 'support_files/abc'
		source_options '**/*.m', '-W'
		configuration do end
	end
	variant('beta') do
		target('my-target') do
			source_options '**/*.m', ''
		end
	end
end