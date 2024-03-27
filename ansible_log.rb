2024-03-24 21:55:32,319 p=3443 u=gonzales n=ansible | PLAY [all] *********************************************************************
2024-03-24 21:55:32,328 p=3443 u=gonzales n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai'], gather_timeout=10] ***
2024-03-24 21:55:33,144 p=3443 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-24 21:55:33,147 p=3443 u=gonzales n=ansible | TASK [Dpkg fixing in ubuntu servers _raw_params=dpkg --configure -a
] **********
2024-03-24 21:55:33,611 p=3443 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-24 21:55:33,615 p=3443 u=gonzales n=ansible | TASK [Updating Ubuntu update_cache=True] ***************************************
2024-03-24 21:55:50,652 p=3443 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-24 21:55:50,655 p=3443 u=gonzales n=ansible | TASK [Installing openssl name=openssl] *****************************************
2024-03-24 21:55:51,738 p=3443 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-24 21:55:51,742 p=3443 u=gonzales n=ansible | TASK [Creating folder for CA path=/{{ item }}, state=directory] ****************
2024-03-24 21:55:52,178 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1,4 +1,4 @@[0m
[0;36m[0m {
     "path": "/ca",
[0;31m-    "state": "absent"[0m
[0;31m[0m[0;32m+    "state": "directory"[0m
[0;32m[0m }


2024-03-24 21:55:52,178 p=3443 u=gonzales n=ansible | changed: [192.168.56.108] => (item=ca)
2024-03-24 21:55:52,515 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1,4 +1,4 @@[0m
[0;36m[0m {
     "path": "/ca/certs",
[0;31m-    "state": "absent"[0m
[0;31m[0m[0;32m+    "state": "directory"[0m
[0;32m[0m }


2024-03-24 21:55:52,516 p=3443 u=gonzales n=ansible | changed: [192.168.56.108] => (item=ca/certs)
2024-03-24 21:55:52,862 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1,4 +1,4 @@[0m
[0;36m[0m {
     "path": "/ca/newcerts",
[0;31m-    "state": "absent"[0m
[0;31m[0m[0;32m+    "state": "directory"[0m
[0;32m[0m }


2024-03-24 21:55:52,863 p=3443 u=gonzales n=ansible | changed: [192.168.56.108] => (item=ca/newcerts)
2024-03-24 21:55:53,135 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1,4 +1,4 @@[0m
[0;36m[0m {
     "path": "/ca/private",
[0;31m-    "state": "absent"[0m
[0;31m[0m[0;32m+    "state": "directory"[0m
[0;32m[0m }


2024-03-24 21:55:53,135 p=3443 u=gonzales n=ansible | changed: [192.168.56.108] => (item=ca/private)
2024-03-24 21:55:53,138 p=3443 u=gonzales n=ansible | TASK [Creating index.txt _raw_params=touch /ca/index.txt] **********************
2024-03-24 21:55:53,377 p=3443 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-24 21:55:53,382 p=3443 u=gonzales n=ansible | TASK [Duplicating openssl.cnf src=/etc/ssl/openssl.cnf, dest=/ca/openssl.ca.cnf] ***
2024-03-24 21:55:54,347 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after: /etc/ssl/openssl.cnf[0m
[0;32m[0m[0;36m@@ -0,0 +1,397 @@[0m
[0;36m[0m[0;32m+#[0m
[0;32m[0m[0;32m+# OpenSSL example configuration file.[0m
[0;32m[0m[0;32m+# See doc/man5/config.pod for more info.[0m
[0;32m[0m[0;32m+#[0m
[0;32m[0m[0;32m+# This is mostly being used for generation of certificate requests,[0m
[0;32m[0m[0;32m+# but may be used for auto loading of providers[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Note that you can include other files from the main configuration[0m
[0;32m[0m[0;32m+# file using the .include directive.[0m
[0;32m[0m[0;32m+#.include filename[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This definition stops the following lines choking if HOME isn't[0m
[0;32m[0m[0;32m+# defined.[0m
[0;32m[0m[0;32m+HOME			= .[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+ # Use this in order to automatically load providers.[0m
[0;32m[0m[0;32m+openssl_conf = openssl_init[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Comment out the next line to ignore configuration errors[0m
[0;32m[0m[0;32m+config_diagnostics = 1[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Extra OBJECT IDENTIFIER info:[0m
[0;32m[0m[0;32m+# oid_file       = $ENV::HOME/.oid[0m
[0;32m[0m[0;32m+oid_section = new_oids[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# To use this configuration file with the "-extfile" option of the[0m
[0;32m[0m[0;32m+# "openssl x509" utility, name here the section containing the[0m
[0;32m[0m[0;32m+# X.509v3 extensions to use:[0m
[0;32m[0m[0;32m+# extensions		=[0m
[0;32m[0m[0;32m+# (Alternatively, use a configuration file that has only[0m
[0;32m[0m[0;32m+# X.509v3 extensions in its main [= default] section.)[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ new_oids ][0m
[0;32m[0m[0;32m+# We can add new OIDs in here for use by 'ca', 'req' and 'ts'.[0m
[0;32m[0m[0;32m+# Add a simple OID like this:[0m
[0;32m[0m[0;32m+# testoid1=1.2.3.4[0m
[0;32m[0m[0;32m+# Or use config file substitution like this:[0m
[0;32m[0m[0;32m+# testoid2=${testoid1}.5.6[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Policies used by the TSA examples.[0m
[0;32m[0m[0;32m+tsa_policy1 = 1.2.3.4.1[0m
[0;32m[0m[0;32m+tsa_policy2 = 1.2.3.4.5.6[0m
[0;32m[0m[0;32m+tsa_policy3 = 1.2.3.4.5.7[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# For FIPS[0m
[0;32m[0m[0;32m+# Optionally include a file that is generated by the OpenSSL fipsinstall[0m
[0;32m[0m[0;32m+# application. This file contains configuration data required by the OpenSSL[0m
[0;32m[0m[0;32m+# fips provider. It contains a named section e.g. [fips_sect] which is[0m
[0;32m[0m[0;32m+# referenced from the [provider_sect] below.[0m
[0;32m[0m[0;32m+# Refer to the OpenSSL security policy for more information.[0m
[0;32m[0m[0;32m+# .include fipsmodule.cnf[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[openssl_init][0m
[0;32m[0m[0;32m+providers = provider_sect[0m
[0;32m[0m[0;32m+ssl_conf = ssl_sect[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# List of providers to load[0m
[0;32m[0m[0;32m+[provider_sect][0m
[0;32m[0m[0;32m+default = default_sect[0m
[0;32m[0m[0;32m+# The fips section name should match the section name inside the[0m
[0;32m[0m[0;32m+# included fipsmodule.cnf.[0m
[0;32m[0m[0;32m+# fips = fips_sect[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# If no providers are activated explicitly, the default one is activated implicitly.[0m
[0;32m[0m[0;32m+# See man 7 OSSL_PROVIDER-default for more details.[0m
[0;32m[0m[0;32m+#[0m
[0;32m[0m[0;32m+# If you add a section explicitly activating any other provider(s), you most[0m
[0;32m[0m[0;32m+# probably need to explicitly activate the default provider, otherwise it[0m
[0;32m[0m[0;32m+# becomes unavailable in openssl.  As a consequence applications depending on[0m
[0;32m[0m[0;32m+# OpenSSL may not work correctly which could lead to significant system[0m
[0;32m[0m[0;32m+# problems including inability to remotely access the system.[0m
[0;32m[0m[0;32m+[default_sect][0m
[0;32m[0m[0;32m+# activate = 1[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+####################################################################[0m
[0;32m[0m[0;32m+[ ca ][0m
[0;32m[0m[0;32m+default_ca	= CA_default		# The default ca section[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+####################################################################[0m
[0;32m[0m[0;32m+[ CA_default ][0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+dir		= ./demoCA		# Where everything is kept[0m
[0;32m[0m[0;32m+certs		= $dir/certs		# Where the issued certs are kept[0m
[0;32m[0m[0;32m+crl_dir		= $dir/crl		# Where the issued crl are kept[0m
[0;32m[0m[0;32m+database	= $dir/index.txt	# database index file.[0m
[0;32m[0m[0;32m+#unique_subject	= no			# Set to 'no' to allow creation of[0m
[0;32m[0m[0;32m+					# several certs with same subject.[0m
[0;32m[0m[0;32m+new_certs_dir	= $dir/newcerts		# default place for new certs.[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+certificate	= $dir/cacert.pem 	# The CA certificate[0m
[0;32m[0m[0;32m+serial		= $dir/serial 		# The current serial number[0m
[0;32m[0m[0;32m+crlnumber	= $dir/crlnumber	# the current crl number[0m
[0;32m[0m[0;32m+					# must be commented out to leave a V1 CRL[0m
[0;32m[0m[0;32m+crl		= $dir/crl.pem 		# The current CRL[0m
[0;32m[0m[0;32m+private_key	= $dir/private/cakey.pem# The private key[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+x509_extensions	= usr_cert		# The extensions to add to the cert[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Comment out the following two lines for the "traditional"[0m
[0;32m[0m[0;32m+# (and highly broken) format.[0m
[0;32m[0m[0;32m+name_opt 	= ca_default		# Subject Name options[0m
[0;32m[0m[0;32m+cert_opt 	= ca_default		# Certificate field options[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Extension copying option: use with caution.[0m
[0;32m[0m[0;32m+# copy_extensions = copy[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Extensions to add to a CRL. Note: Netscape communicator chokes on V2 CRLs[0m
[0;32m[0m[0;32m+# so this is commented out by default to leave a V1 CRL.[0m
[0;32m[0m[0;32m+# crlnumber must also be commented out to leave a V1 CRL.[0m
[0;32m[0m[0;32m+# crl_extensions	= crl_ext[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+default_days	= 365			# how long to certify for[0m
[0;32m[0m[0;32m+default_crl_days= 30			# how long before next CRL[0m
[0;32m[0m[0;32m+default_md	= default		# use public key default MD[0m
[0;32m[0m[0;32m+preserve	= no			# keep passed DN ordering[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# A few difference way of specifying how similar the request should look[0m
[0;32m[0m[0;32m+# For type CA, the listed attributes must be the same, and the optional[0m
[0;32m[0m[0;32m+# and supplied fields are just that :-)[0m
[0;32m[0m[0;32m+policy		= policy_match[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# For the CA policy[0m
[0;32m[0m[0;32m+[ policy_match ][0m
[0;32m[0m[0;32m+countryName		= match[0m
[0;32m[0m[0;32m+stateOrProvinceName	= match[0m
[0;32m[0m[0;32m+organizationName	= match[0m
[0;32m[0m[0;32m+organizationalUnitName	= optional[0m
[0;32m[0m[0;32m+commonName		= supplied[0m
[0;32m[0m[0;32m+emailAddress		= optional[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# For the 'anything' policy[0m
[0;32m[0m[0;32m+# At this point in time, you must list all acceptable 'object'[0m
[0;32m[0m[0;32m+# types.[0m
[0;32m[0m[0;32m+[ policy_anything ][0m
[0;32m[0m[0;32m+countryName		= optional[0m
[0;32m[0m[0;32m+stateOrProvinceName	= optional[0m
[0;32m[0m[0;32m+localityName		= optional[0m
[0;32m[0m[0;32m+organizationName	= optional[0m
[0;32m[0m[0;32m+organizationalUnitName	= optional[0m
[0;32m[0m[0;32m+commonName		= supplied[0m
[0;32m[0m[0;32m+emailAddress		= optional[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+####################################################################[0m
[0;32m[0m[0;32m+[ req ][0m
[0;32m[0m[0;32m+default_bits		= 2048[0m
[0;32m[0m[0;32m+default_keyfile 	= privkey.pem[0m
[0;32m[0m[0;32m+distinguished_name	= req_distinguished_name[0m
[0;32m[0m[0;32m+attributes		= req_attributes[0m
[0;32m[0m[0;32m+x509_extensions	= v3_ca	# The extensions to add to the self signed cert[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Passwords for private keys if not present they will be prompted for[0m
[0;32m[0m[0;32m+# input_password = secret[0m
[0;32m[0m[0;32m+# output_password = secret[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This sets a mask for permitted string types. There are several options.[0m
[0;32m[0m[0;32m+# default: PrintableString, T61String, BMPString.[0m
[0;32m[0m[0;32m+# pkix	 : PrintableString, BMPString (PKIX recommendation before 2004)[0m
[0;32m[0m[0;32m+# utf8only: only UTF8Strings (PKIX recommendation after 2004).[0m
[0;32m[0m[0;32m+# nombstr : PrintableString, T61String (no BMPStrings or UTF8Strings).[0m
[0;32m[0m[0;32m+# MASK:XXXX a literal mask value.[0m
[0;32m[0m[0;32m+# WARNING: ancient versions of Netscape crash on BMPStrings or UTF8Strings.[0m
[0;32m[0m[0;32m+string_mask = utf8only[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# req_extensions = v3_req # The extensions to add to a certificate request[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ req_distinguished_name ][0m
[0;32m[0m[0;32m+countryName			= Country Name (2 letter code)[0m
[0;32m[0m[0;32m+countryName_default		= AU[0m
[0;32m[0m[0;32m+countryName_min			= 2[0m
[0;32m[0m[0;32m+countryName_max			= 2[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+stateOrProvinceName		= State or Province Name (full name)[0m
[0;32m[0m[0;32m+stateOrProvinceName_default	= Some-State[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+localityName			= Locality Name (eg, city)[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+0.organizationName		= Organization Name (eg, company)[0m
[0;32m[0m[0;32m+0.organizationName_default	= Internet Widgits Pty Ltd[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# we can do this but it is not needed normally :-)[0m
[0;32m[0m[0;32m+#1.organizationName		= Second Organization Name (eg, company)[0m
[0;32m[0m[0;32m+#1.organizationName_default	= World Wide Web Pty Ltd[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+organizationalUnitName		= Organizational Unit Name (eg, section)[0m
[0;32m[0m[0;32m+#organizationalUnitName_default	=[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+commonName			= Common Name (e.g. server FQDN or YOUR name)[0m
[0;32m[0m[0;32m+commonName_max			= 64[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+emailAddress			= Email Address[0m
[0;32m[0m[0;32m+emailAddress_max		= 64[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# SET-ex3			= SET extension number 3[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ req_attributes ][0m
[0;32m[0m[0;32m+challengePassword		= A challenge password[0m
[0;32m[0m[0;32m+challengePassword_min		= 4[0m
[0;32m[0m[0;32m+challengePassword_max		= 20[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+unstructuredName		= An optional company name[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ usr_cert ][0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# These extensions are added when 'ca' signs a request.[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This goes against PKIX guidelines but some CAs do it and some software[0m
[0;32m[0m[0;32m+# requires this to avoid interpreting an end user certificate as a CA.[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+basicConstraints=CA:FALSE[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This is typical in keyUsage for a client certificate.[0m
[0;32m[0m[0;32m+# keyUsage = nonRepudiation, digitalSignature, keyEncipherment[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# PKIX recommendations harmless if included in all certificates.[0m
[0;32m[0m[0;32m+subjectKeyIdentifier=hash[0m
[0;32m[0m[0;32m+authorityKeyIdentifier=keyid,issuer[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This stuff is for subjectAltName and issuerAltname.[0m
[0;32m[0m[0;32m+# Import the email address.[0m
[0;32m[0m[0;32m+# subjectAltName=email:copy[0m
[0;32m[0m[0;32m+# An alternative to produce certificates that aren't[0m
[0;32m[0m[0;32m+# deprecated according to PKIX.[0m
[0;32m[0m[0;32m+# subjectAltName=email:move[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Copy subject details[0m
[0;32m[0m[0;32m+# issuerAltName=issuer:copy[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This is required for TSA certificates.[0m
[0;32m[0m[0;32m+# extendedKeyUsage = critical,timeStamping[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ v3_req ][0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Extensions to add to a certificate request[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+basicConstraints = CA:FALSE[0m
[0;32m[0m[0;32m+keyUsage = nonRepudiation, digitalSignature, keyEncipherment[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ v3_ca ][0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Extensions for a typical CA[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# PKIX recommendation.[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+subjectKeyIdentifier=hash[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+authorityKeyIdentifier=keyid:always,issuer[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+basicConstraints = critical,CA:true[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Key usage: this is typical for a CA certificate. However since it will[0m
[0;32m[0m[0;32m+# prevent it being used as an test self-signed certificate it is best[0m
[0;32m[0m[0;32m+# left out by default.[0m
[0;32m[0m[0;32m+# keyUsage = cRLSign, keyCertSign[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Include email address in subject alt name: another PKIX recommendation[0m
[0;32m[0m[0;32m+# subjectAltName=email:copy[0m
[0;32m[0m[0;32m+# Copy issuer details[0m
[0;32m[0m[0;32m+# issuerAltName=issuer:copy[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# DER hex encoding of an extension: beware experts only![0m
[0;32m[0m[0;32m+# obj=DER:02:03[0m
[0;32m[0m[0;32m+# Where 'obj' is a standard or added object[0m
[0;32m[0m[0;32m+# You can even override a supported extension:[0m
[0;32m[0m[0;32m+# basicConstraints= critical, DER:30:03:01:01:FF[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ crl_ext ][0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# CRL extensions.[0m
[0;32m[0m[0;32m+# Only issuerAltName and authorityKeyIdentifier make any sense in a CRL.[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# issuerAltName=issuer:copy[0m
[0;32m[0m[0;32m+authorityKeyIdentifier=keyid:always[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ proxy_cert_ext ][0m
[0;32m[0m[0;32m+# These extensions should be added when creating a proxy certificate[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This goes against PKIX guidelines but some CAs do it and some software[0m
[0;32m[0m[0;32m+# requires this to avoid interpreting an end user certificate as a CA.[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+basicConstraints=CA:FALSE[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This is typical in keyUsage for a client certificate.[0m
[0;32m[0m[0;32m+# keyUsage = nonRepudiation, digitalSignature, keyEncipherment[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# PKIX recommendations harmless if included in all certificates.[0m
[0;32m[0m[0;32m+subjectKeyIdentifier=hash[0m
[0;32m[0m[0;32m+authorityKeyIdentifier=keyid,issuer[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This stuff is for subjectAltName and issuerAltname.[0m
[0;32m[0m[0;32m+# Import the email address.[0m
[0;32m[0m[0;32m+# subjectAltName=email:copy[0m
[0;32m[0m[0;32m+# An alternative to produce certificates that aren't[0m
[0;32m[0m[0;32m+# deprecated according to PKIX.[0m
[0;32m[0m[0;32m+# subjectAltName=email:move[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Copy subject details[0m
[0;32m[0m[0;32m+# issuerAltName=issuer:copy[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# This really needs to be in place for it to be a proxy certificate.[0m
[0;32m[0m[0;32m+proxyCertInfo=critical,language:id-ppl-anyLanguage,pathlen:3,policy:foo[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+####################################################################[0m
[0;32m[0m[0;32m+[ tsa ][0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+default_tsa = tsa_config1	# the default TSA section[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ tsa_config1 ][0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# These are used by the TSA reply generation only.[0m
[0;32m[0m[0;32m+dir		= ./demoCA		# TSA root directory[0m
[0;32m[0m[0;32m+serial		= $dir/tsaserial	# The current serial number (mandatory)[0m
[0;32m[0m[0;32m+crypto_device	= builtin		# OpenSSL engine to use for signing[0m
[0;32m[0m[0;32m+signer_cert	= $dir/tsacert.pem 	# The TSA signing certificate[0m
[0;32m[0m[0;32m+					# (optional)[0m
[0;32m[0m[0;32m+certs		= $dir/cacert.pem	# Certificate chain to include in reply[0m
[0;32m[0m[0;32m+					# (optional)[0m
[0;32m[0m[0;32m+signer_key	= $dir/private/tsakey.pem # The TSA private key (optional)[0m
[0;32m[0m[0;32m+signer_digest  = sha256			# Signing digest to use. (Optional)[0m
[0;32m[0m[0;32m+default_policy	= tsa_policy1		# Policy if request did not specify it[0m
[0;32m[0m[0;32m+					# (optional)[0m
[0;32m[0m[0;32m+other_policies	= tsa_policy2, tsa_policy3	# acceptable policies (optional)[0m
[0;32m[0m[0;32m+digests     = sha1, sha256, sha384, sha512  # Acceptable message digests (mandatory)[0m
[0;32m[0m[0;32m+accuracy	= secs:1, millisecs:500, microsecs:100	# (optional)[0m
[0;32m[0m[0;32m+clock_precision_digits  = 0	# number of digits after dot. (optional)[0m
[0;32m[0m[0;32m+ordering		= yes	# Is ordering defined for timestamps?[0m
[0;32m[0m[0;32m+				# (optional, default: no)[0m
[0;32m[0m[0;32m+tsa_name		= yes	# Must the TSA name be included in the reply?[0m
[0;32m[0m[0;32m+				# (optional, default: no)[0m
[0;32m[0m[0;32m+ess_cert_id_chain	= no	# Must the ESS cert id chain be included?[0m
[0;32m[0m[0;32m+				# (optional, default: no)[0m
[0;32m[0m[0;32m+ess_cert_id_alg		= sha1	# algorithm to compute certificate[0m
[0;32m[0m[0;32m+				# identifier (optional, default: sha1)[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[insta] # CMP using Insta Demo CA[0m
[0;32m[0m[0;32m+# Message transfer[0m
[0;32m[0m[0;32m+server = pki.certificate.fi:8700[0m
[0;32m[0m[0;32m+# proxy = # set this as far as needed, e.g., http://192.168.1.1:8080[0m
[0;32m[0m[0;32m+# tls_use = 0[0m
[0;32m[0m[0;32m+path = pkix/[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Server authentication[0m
[0;32m[0m[0;32m+recipient = "/C=FI/O=Insta Demo/CN=Insta Demo CA" # or set srvcert or issuer[0m
[0;32m[0m[0;32m+ignore_keyusage = 1 # potentially needed quirk[0m
[0;32m[0m[0;32m+unprotected_errors = 1 # potentially needed quirk[0m
[0;32m[0m[0;32m+extracertsout = insta.extracerts.pem[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Client authentication[0m
[0;32m[0m[0;32m+ref = 3078 # user identification[0m
[0;32m[0m[0;32m+secret = pass:insta # can be used for both client and server side[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Generic message options[0m
[0;32m[0m[0;32m+cmd = ir # default operation, can be overridden on cmd line with, e.g., kur[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Certificate enrollment[0m
[0;32m[0m[0;32m+subject = "/CN=openssl-cmp-test"[0m
[0;32m[0m[0;32m+newkey = insta.priv.pem[0m
[0;32m[0m[0;32m+out_trusted = insta.ca.crt[0m
[0;32m[0m[0;32m+certout = insta.cert.pem[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[pbm] # Password-based protection for Insta CA[0m
[0;32m[0m[0;32m+# Server and client authentication[0m
[0;32m[0m[0;32m+ref = $insta::ref # 3078[0m
[0;32m[0m[0;32m+secret = $insta::secret # pass:insta[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[signature] # Signature-based protection for Insta CA[0m
[0;32m[0m[0;32m+# Server authentication[0m
[0;32m[0m[0;32m+trusted = insta.ca.crt # does not include keyUsage digitalSignature[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+# Client authentication[0m
[0;32m[0m[0;32m+secret = # disable PBM[0m
[0;32m[0m[0;32m+key = $insta::newkey # insta.priv.pem[0m
[0;32m[0m[0;32m+cert = $insta::certout # insta.cert.pem[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ir][0m
[0;32m[0m[0;32m+cmd = ir[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[cr][0m
[0;32m[0m[0;32m+cmd = cr[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[kur][0m
[0;32m[0m[0;32m+# Certificate update[0m
[0;32m[0m[0;32m+cmd = kur[0m
[0;32m[0m[0;32m+oldcert = $insta::certout # insta.cert.pem[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[rr][0m
[0;32m[0m[0;32m+# Certificate revocation[0m
[0;32m[0m[0;32m+cmd = rr[0m
[0;32m[0m[0;32m+oldcert = $insta::certout # insta.cert.pem[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[ssl_sect][0m
[0;32m[0m[0;32m+system_default = system_default_sect[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m[0;32m+[system_default_sect][0m
[0;32m[0m[0;32m+CipherString = DEFAULT:@SECLEVEL=2[0m
[0;32m[0m

2024-03-24 21:55:54,348 p=3443 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-24 21:55:54,351 p=3443 u=gonzales n=ansible | TASK [Generating private key path=/ca/private/ca.key, size=2048, type=RSA] *****
2024-03-24 21:55:55,042 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1 +1,14 @@[0m
[0;36m[0m[0;31m-{}[0m
[0;31m[0m[0;32m+{[0m
[0;32m[0m[0;32m+    "can_parse_key": true,[0m
[0;32m[0m[0;32m+    "key_is_consistent": null,[0m
[0;32m[0m[0;32m+    "public_data": {[0m
[0;32m[0m[0;32m+        "exponent": 65537,[0m
[0;32m[0m[0;32m+        "modulus": 17001011341369065688506298592102954038913145319732263051477555702960664715122397121708790192573953320692537251175729307522615679721232601367629364984552880903975307357719611403201613318768188460266458016054972685493311587061593142673987216395067449943620037251900901222951048692938488335139850913866653389668031822803574601708388414932489865981207583593173811133320096580816615931391879786443743640469617171893495019585915916025511100843195358612848282821283118077623471754107641138976761379149127402422658267525433732049424410266997744779619905797455675980335347896099273039562234056815602669165914872853738913654049,[0m
[0;32m[0m[0;32m+        "size": 2048[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhqyIE1q0hLRjZLj9LWJp\n0gMA+pO1TArimSdcPRYNRrXIchxg07rFIJ79T+x+Zl+JFmURHrBlE/iOW7kcYBDs\n5X30It+XJbsx5wUSlSCTzn3/cssl1q7P+UACbbhdVTEhrBDHfYfyhn4gbxDwM5RU\n+xbiyMxwJe316GncvGTj5emnVipLEQ/OnNLfwlPOGNr0UrzlOnD9wxgU7JdMMHDh\nBFqsPIsxEnrBC3WYCuAaDjJBvKQlr15vr34WViPJxWnFb3lLYGyELVJdE+A9fGaX\nInGQERZLIc+fSX3xUm+ILTRY0Sxbnl9QugfL1kykBN9o1afb/hP+RyxSR2KXBfnl\nIQIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;32m[0m[0;32m+    "public_key_fingerprints": {[0m
[0;32m[0m[0;32m+        "sha256": "18:19:e2:48:3d:c3:33:47:15:2b:34:3a:e1:d9:cd:ea:9f:b8:9d:44:7f:79:cc:64:ed:93:b0:75:14:51:a4:7a"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "type": "RSA"[0m
[0;32m[0m[0;32m+}[0m
[0;32m[0m

2024-03-24 21:55:55,042 p=3443 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-24 21:55:55,044 p=3443 u=gonzales n=ansible | TASK [Generating certificate signing request path=/ca/ca.csr, privatekey_path=/ca/private/ca.key, provider=selfsigned] ***
2024-03-24 21:55:55,658 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1 +1,48 @@[0m
[0;36m[0m[0;31m-{}[0m
[0;31m[0m[0;32m+{[0m
[0;32m[0m[0;32m+    "authority_cert_issuer": null,[0m
[0;32m[0m[0;32m+    "authority_cert_serial_number": null,[0m
[0;32m[0m[0;32m+    "authority_key_identifier": null,[0m
[0;32m[0m[0;32m+    "basic_constraints": null,[0m
[0;32m[0m[0;32m+    "basic_constraints_critical": false,[0m
[0;32m[0m[0;32m+    "can_parse_certificate": true,[0m
[0;32m[0m[0;32m+    "expired": false,[0m
[0;32m[0m[0;32m+    "extended_key_usage": null,[0m
[0;32m[0m[0;32m+    "extended_key_usage_critical": false,[0m
[0;32m[0m[0;32m+    "extensions_by_oid": {[0m
[0;32m[0m[0;32m+        "2.5.29.14": {[0m
[0;32m[0m[0;32m+            "critical": false,[0m
[0;32m[0m[0;32m+            "value": "BBTXwuPZXvfjkqxKEF7H33sGAai7Jw=="[0m
[0;32m[0m[0;32m+        }[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "fingerprints": {[0m
[0;32m[0m[0;32m+        "sha256": "94:ab:76:6f:f6:e2:13:5e:85:10:15:d6:0d:67:fe:1b:ef:cd:07:dd:e9:c7:76:eb:78:06:c3:82:14:00:60:b9"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "issuer": {},[0m
[0;32m[0m[0;32m+    "issuer_ordered": [],[0m
[0;32m[0m[0;32m+    "issuer_uri": null,[0m
[0;32m[0m[0;32m+    "key_usage": null,[0m
[0;32m[0m[0;32m+    "key_usage_critical": false,[0m
[0;32m[0m[0;32m+    "not_after": "20340322135555Z",[0m
[0;32m[0m[0;32m+    "not_before": "20240324135555Z",[0m
[0;32m[0m[0;32m+    "ocsp_must_staple": null,[0m
[0;32m[0m[0;32m+    "ocsp_must_staple_critical": false,[0m
[0;32m[0m[0;32m+    "ocsp_uri": null,[0m
[0;32m[0m[0;32m+    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhqyIE1q0hLRjZLj9LWJp\n0gMA+pO1TArimSdcPRYNRrXIchxg07rFIJ79T+x+Zl+JFmURHrBlE/iOW7kcYBDs\n5X30It+XJbsx5wUSlSCTzn3/cssl1q7P+UACbbhdVTEhrBDHfYfyhn4gbxDwM5RU\n+xbiyMxwJe316GncvGTj5emnVipLEQ/OnNLfwlPOGNr0UrzlOnD9wxgU7JdMMHDh\nBFqsPIsxEnrBC3WYCuAaDjJBvKQlr15vr34WViPJxWnFb3lLYGyELVJdE+A9fGaX\nInGQERZLIc+fSX3xUm+ILTRY0Sxbnl9QugfL1kykBN9o1afb/hP+RyxSR2KXBfnl\nIQIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;32m[0m[0;32m+    "public_key_data": {[0m
[0;32m[0m[0;32m+        "exponent": 65537,[0m
[0;32m[0m[0;32m+        "modulus": 17001011341369065688506298592102954038913145319732263051477555702960664715122397121708790192573953320692537251175729307522615679721232601367629364984552880903975307357719611403201613318768188460266458016054972685493311587061593142673987216395067449943620037251900901222951048692938488335139850913866653389668031822803574601708388414932489865981207583593173811133320096580816615931391879786443743640469617171893495019585915916025511100843195358612848282821283118077623471754107641138976761379149127402422658267525433732049424410266997744779619905797455675980335347896099273039562234056815602669165914872853738913654049,[0m
[0;32m[0m[0;32m+        "size": 2048[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "public_key_fingerprints": {[0m
[0;32m[0m[0;32m+        "sha256": "18:19:e2:48:3d:c3:33:47:15:2b:34:3a:e1:d9:cd:ea:9f:b8:9d:44:7f:79:cc:64:ed:93:b0:75:14:51:a4:7a"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "public_key_type": "RSA",[0m
[0;32m[0m[0;32m+    "serial_number": 324109335889625076080174773283713390247924388089,[0m
[0;32m[0m[0;32m+    "signature_algorithm": "sha256WithRSAEncryption",[0m
[0;32m[0m[0;32m+    "subject": {},[0m
[0;32m[0m[0;32m+    "subject_alt_name": null,[0m
[0;32m[0m[0;32m+    "subject_alt_name_critical": false,[0m
[0;32m[0m[0;32m+    "subject_key_identifier": "d7:c2:e3:d9:5e:f7:e3:92:ac:4a:10:5e:c7:df:7b:06:01:a8:bb:27",[0m
[0;32m[0m[0;32m+    "subject_ordered": [],[0m
[0;32m[0m[0;32m+    "version": 3[0m
[0;32m[0m[0;32m+}[0m
[0;32m[0m

2024-03-24 21:55:55,658 p=3443 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-24 21:55:55,660 p=3443 u=gonzales n=ansible | TASK [Generating selfsigned certificate provider=selfsigned, path=/ca/certs/cert.crt, privatekey_path=/ca/private/ca.key, selfsigned_not_after=+3650d, mode=420] ***
2024-03-24 21:55:56,127 p=3443 u=gonzales n=ansible | [0;31m--- before[0m
[0;31m[0m[0;32m+++ after[0m
[0;32m[0m[0;36m@@ -1 +1,48 @@[0m
[0;36m[0m[0;31m-{}[0m
[0;31m[0m[0;32m+{[0m
[0;32m[0m[0;32m+    "authority_cert_issuer": null,[0m
[0;32m[0m[0;32m+    "authority_cert_serial_number": null,[0m
[0;32m[0m[0;32m+    "authority_key_identifier": null,[0m
[0;32m[0m[0;32m+    "basic_constraints": null,[0m
[0;32m[0m[0;32m+    "basic_constraints_critical": false,[0m
[0;32m[0m[0;32m+    "can_parse_certificate": true,[0m
[0;32m[0m[0;32m+    "expired": false,[0m
[0;32m[0m[0;32m+    "extended_key_usage": null,[0m
[0;32m[0m[0;32m+    "extended_key_usage_critical": false,[0m
[0;32m[0m[0;32m+    "extensions_by_oid": {[0m
[0;32m[0m[0;32m+        "2.5.29.14": {[0m
[0;32m[0m[0;32m+            "critical": false,[0m
[0;32m[0m[0;32m+            "value": "BBTXwuPZXvfjkqxKEF7H33sGAai7Jw=="[0m
[0;32m[0m[0;32m+        }[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "fingerprints": {[0m
[0;32m[0m[0;32m+        "sha256": "36:d3:ed:e3:66:5a:93:16:c7:46:d4:02:54:38:4e:6c:2c:92:a8:ef:bc:b2:5e:cb:c6:03:13:19:f4:6d:9c:04"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "issuer": {},[0m
[0;32m[0m[0;32m+    "issuer_ordered": [],[0m
[0;32m[0m[0;32m+    "issuer_uri": null,[0m
[0;32m[0m[0;32m+    "key_usage": null,[0m
[0;32m[0m[0;32m+    "key_usage_critical": false,[0m
[0;32m[0m[0;32m+    "not_after": "20340322135556Z",[0m
[0;32m[0m[0;32m+    "not_before": "20240324135556Z",[0m
[0;32m[0m[0;32m+    "ocsp_must_staple": null,[0m
[0;32m[0m[0;32m+    "ocsp_must_staple_critical": false,[0m
[0;32m[0m[0;32m+    "ocsp_uri": null,[0m
[0;32m[0m[0;32m+    "public_key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhqyIE1q0hLRjZLj9LWJp\n0gMA+pO1TArimSdcPRYNRrXIchxg07rFIJ79T+x+Zl+JFmURHrBlE/iOW7kcYBDs\n5X30It+XJbsx5wUSlSCTzn3/cssl1q7P+UACbbhdVTEhrBDHfYfyhn4gbxDwM5RU\n+xbiyMxwJe316GncvGTj5emnVipLEQ/OnNLfwlPOGNr0UrzlOnD9wxgU7JdMMHDh\nBFqsPIsxEnrBC3WYCuAaDjJBvKQlr15vr34WViPJxWnFb3lLYGyELVJdE+A9fGaX\nInGQERZLIc+fSX3xUm+ILTRY0Sxbnl9QugfL1kykBN9o1afb/hP+RyxSR2KXBfnl\nIQIDAQAB\n-----END PUBLIC KEY-----\n",[0m
[0;32m[0m[0;32m+    "public_key_data": {[0m
[0;32m[0m[0;32m+        "exponent": 65537,[0m
[0;32m[0m[0;32m+        "modulus": 17001011341369065688506298592102954038913145319732263051477555702960664715122397121708790192573953320692537251175729307522615679721232601367629364984552880903975307357719611403201613318768188460266458016054972685493311587061593142673987216395067449943620037251900901222951048692938488335139850913866653389668031822803574601708388414932489865981207583593173811133320096580816615931391879786443743640469617171893495019585915916025511100843195358612848282821283118077623471754107641138976761379149127402422658267525433732049424410266997744779619905797455675980335347896099273039562234056815602669165914872853738913654049,[0m
[0;32m[0m[0;32m+        "size": 2048[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "public_key_fingerprints": {[0m
[0;32m[0m[0;32m+        "sha256": "18:19:e2:48:3d:c3:33:47:15:2b:34:3a:e1:d9:cd:ea:9f:b8:9d:44:7f:79:cc:64:ed:93:b0:75:14:51:a4:7a"[0m
[0;32m[0m[0;32m+    },[0m
[0;32m[0m[0;32m+    "public_key_type": "RSA",[0m
[0;32m[0m[0;32m+    "serial_number": 717644720764725722774879851505239488226145050335,[0m
[0;32m[0m[0;32m+    "signature_algorithm": "sha256WithRSAEncryption",[0m
[0;32m[0m[0;32m+    "subject": {},[0m
[0;32m[0m[0;32m+    "subject_alt_name": null,[0m
[0;32m[0m[0;32m+    "subject_alt_name_critical": false,[0m
[0;32m[0m[0;32m+    "subject_key_identifier": "d7:c2:e3:d9:5e:f7:e3:92:ac:4a:10:5e:c7:df:7b:06:01:a8:bb:27",[0m
[0;32m[0m[0;32m+    "subject_ordered": [],[0m
[0;32m[0m[0;32m+    "version": 3[0m
[0;32m[0m[0;32m+}[0m
[0;32m[0m

2024-03-24 21:55:56,128 p=3443 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-24 21:55:56,135 p=3443 u=gonzales n=ansible | PLAY RECAP *********************************************************************
2024-03-24 21:55:56,136 p=3443 u=gonzales n=ansible | 192.168.56.108             : ok=10   changed=8    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
2024-03-27 22:08:59,229 p=3230 u=gonzales n=ansible | PLAY [all] *********************************************************************
2024-03-27 22:08:59,240 p=3230 u=gonzales n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai'], gather_timeout=10] ***
2024-03-27 22:09:00,445 p=3230 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-27 22:09:00,448 p=3230 u=gonzales n=ansible | TASK [Dpkg fixing in ubuntu servers _raw_params=dpkg --configure -a
] **********
2024-03-27 22:09:00,953 p=3230 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-27 22:09:00,957 p=3230 u=gonzales n=ansible | TASK [Updating Ubuntu update_cache=True] ***************************************
2024-03-27 22:09:14,327 p=3230 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-27 22:09:14,331 p=3230 u=gonzales n=ansible | TASK [Installing openssl name=openssl] *****************************************
2024-03-27 22:09:15,362 p=3230 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-27 22:09:15,365 p=3230 u=gonzales n=ansible | TASK [Creating folder for CA path=/{{ item }}, state=directory] ****************
2024-03-27 22:09:15,828 p=3230 u=gonzales n=ansible | ok: [192.168.56.108] => (item=ca)
2024-03-27 22:09:16,122 p=3230 u=gonzales n=ansible | ok: [192.168.56.108] => (item=ca/certs)
2024-03-27 22:09:16,426 p=3230 u=gonzales n=ansible | ok: [192.168.56.108] => (item=ca/newcerts)
2024-03-27 22:09:16,725 p=3230 u=gonzales n=ansible | ok: [192.168.56.108] => (item=ca/private)
2024-03-27 22:09:16,730 p=3230 u=gonzales n=ansible | TASK [Creating index.txt _raw_params=touch /ca/index.txt] **********************
2024-03-27 22:09:17,042 p=3230 u=gonzales n=ansible | changed: [192.168.56.108]
2024-03-27 22:09:17,049 p=3230 u=gonzales n=ansible | TASK [Duplicating openssl.cnf src=/etc/ssl/openssl.cnf, dest=/ca/openssl.ca.cnf] ***
2024-03-27 22:09:17,755 p=3230 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-27 22:09:17,758 p=3230 u=gonzales n=ansible | TASK [Generating private key path=/ca/private/ca.key, size=2048, type=RSA] *****
2024-03-27 22:09:18,396 p=3230 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-27 22:09:18,400 p=3230 u=gonzales n=ansible | TASK [Generating certificate signing request path=/ca/ca.csr, privatekey_path=/ca/private/ca.key, provider=selfsigned] ***
2024-03-27 22:09:19,107 p=3230 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-27 22:09:19,110 p=3230 u=gonzales n=ansible | TASK [Generating selfsigned certificate provider=selfsigned, path=/ca/certs/cert.crt, privatekey_path=/ca/private/ca.key, selfsigned_not_after=+3650d, mode=420] ***
2024-03-27 22:09:19,648 p=3230 u=gonzales n=ansible | ok: [192.168.56.108]
2024-03-27 22:09:19,658 p=3230 u=gonzales n=ansible | PLAY RECAP *********************************************************************
2024-03-27 22:09:19,658 p=3230 u=gonzales n=ansible | 192.168.56.108             : ok=10   changed=3    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
