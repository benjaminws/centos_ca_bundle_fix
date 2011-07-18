CentOS CA Bundle Fix
====================

## Why?

Because the default cabundle.crt that comes with CentOS is old and out of date. You can't even fetch shit from github. Unacceptable.

## Credits

Found the bug here: http://bugs.centos.org/view.php?id=4899, which
pointed me to @JonnieCache's fix here:
http://cleverna.me/posts/centos-openssl-has-out-of-date-ca-certs

So he did the research, I just shoved it in a cookbook for safe keeping
;)

## Notes 

I used the same bundle @JonnieCache did, from http://curl.haxx.se/ca/cacert.pem

Feel free to replace files/default/cacert.pem with whatever you want.

## Usage

Clone this repo into your cookbook path (look in ~/.chef/knife.rb if you
don't know).

    $ git clone https://benjaminws@github.com/benjaminws/centos_ca_bundle_fix.git

### Using chef-server

Add it to your run list:

    $ knife node run_list add <node> centos_ca_bundle_fix

Now run chef-client. Should be good.
