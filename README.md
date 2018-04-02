# MUS

[![Build Status](https://travis-ci.org/faissaloo/urlshortner.svg?branch=master)](https://travis-ci.org/faissaloo/urlshortner)  
  
MUS is a simple URL shortener that aims to provide a minimal REST API for creating shortened URLs, as well as doing the actual redirection for the shortened URLs it provides.  
The API allows a programmer to send a POST request to /shorten, providing the URL to be shortened in the 'url' parameter, the server will respond with HTTP code 400 in the event that the request is invalid (i.e: The URL is invalid or no URL is provided). Below are some examples (replace localhost:3000 with your server's address and port number):  
  
## Ruby  
```
require 'net/http'
Net::HTTP.post_form(URI.parse("http://<SERVER AND PORT NUMBER>/shorten"), {"url":"<YOUR URL TO SHORTEN>"})
```
  
## Python  
```
import requests
requests.post("http://<SERVER AND PORT NUMBER>/shorten", data = {"url":"<YOUR URL TO SHORTEN>"})
```
