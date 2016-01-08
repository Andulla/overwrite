Facter.add('mycustomfact') do
  setcode do
    if File.exist? '/tmp/shouldexist'
      'yes'
    else
      'no'
    end
  end
end
