# Verify Handle

This is a simple app that enables one to verify the fidelity of a social network account. Currently, the services supported are:

* Github
* Linkedin
* Twitter

More services could be added in subsequent versions.

## How to use the service

This is basically an api that users call with a default `Content-Type` of `application/json`. When the _username_ to be verified is successfully verified, it returns the json representation of the user object. If it is not a valid username, it returns a 404 response. If something bad happens from either service end or its client's end, you will naturally get a 500 response.


### Usage

In order to use the app, you need to specify the version number in the `Accept` header of your request. An example of a valid `Accept` value is `application/vnd.handle.v1`. Where `v1` informs that you want to use version 1.

**Note that failure to use the right `Accept` header will result in an invalid endpoint message**

### GITHUB and TWITTER


To verify a github/twitter username/screen_name, here is the format of the URL.

```/github/:username```

```/twitter/:screen_name```

### LinkedIn


To verify a linkedin url. You have to pass in the profile **url** as a query string and not as part of the path.

```/linkedin?url=<https://linkedinprofileurl>```.

Following all of these rules, it should not be difficult to leverage this service.

## Contributions

Contributions are hereby welcome, if you want to add other services or add functionality to the existing ones, feel free to fork the repo, make your changes and then raise a PR. If the use of this app produces unexpected or unwanted results, please raise an issue.
