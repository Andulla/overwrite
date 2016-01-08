Facter.add('mycustomfact') do
  setcode do
    if File.exist? '/tmp/shouldexist'
      'yes'
    end
  end
end
