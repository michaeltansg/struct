spec('1.2.0') do
	configuration('my-configuration') do
		profile 'general:debug'
		profile 'ios:debug'
		override 'OVERRIDE', '1'
		type 'debug'
	end
	target('my-target') do
		type :application
		source_dir 'support_files/abc'
		framework_reference 'support_files/local_framework.framework', { copy: false, codeSignOnCopy: false }
		configuration do end
	end
end