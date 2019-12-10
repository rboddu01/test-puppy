# oracleclient_version.rb
Facter.add(:oracleclient_version) do
    setcode do
     %x{/bin/rpm -qa | grep oracle-instantclient | /bin/cut -d'-' -f 4 | cut -d '.' -f1 | /bin/sort -u | /usr/bin/uniq}.chomp.to_f
  end
    end