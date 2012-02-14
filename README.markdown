`rb_goog_auth`: Simple Google authentication
==========

This gem wraps the old-fashioned Google "ClientLogin" authentication method. 99% of the time, you should use Google's OAuth APIs. Sometimes, however, you need to do things the old-fashioned way.

Installation
--------

    gem install rb_goog_auth

Usage
--------

Given a Google account name, password, source, and service ID, the `GoogAuth` class will return SID, LSID, and Auth values. You probably just want to retain the Auth value.

For the love of all that is holy, _do not_ store the username and password in your application. 

    g = GoogAuth.new
    c = g.get_credentials(:username => some_user_name, :password => some_password, :source => some_source, :service => some_service)
    c.inspect # => {:sid => some_sid, :lsid => some_lsid, :auth => some_auth_token}
    
If authentication fails, `get_credentials` will return nil.

License
----------
Copyright (c) 2012, Steven Bedrick
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

