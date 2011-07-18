cookbook_file "/etc/pki/tls/certs/ca-bundle.crt" do
  source "cacert.pem"
  owner "root"
  group "root"
  mode "0644"
end
