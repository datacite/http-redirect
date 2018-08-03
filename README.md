[![Docker Build Status](https://img.shields.io/docker/build/datacite/http-redirect.svg)](https://hub.docker.com/r/datacite/http-redirect/)

# http-redirect

An nginx Docker container that redirects all http requests to https. Uses custom log format. Provides health check endpoint at `/heartbeat`. 
Two versions: image tag `1.2` redirects to same URL via HTTPS, image tag `1.2root` redirects to host root via HTTPS instead.

## License
Released under the [MIT License](https://github.com/datacite/http-redirect/blob/master/LICENSE).
