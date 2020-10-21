echo "http://dl-4.alpinelinux.org/alpine/v3.9/main" >> /etc/apk/repositories && \
echo "http://dl-4.alpinelinux.org/alpine/v3.9/community" >> /etc/apk/repositories

apk update && \
   apk add build-base \
   libxml2-dev \
   libxslt-dev \
   postgresql-dev \
   curl unzip libexif undev chromium chromium-chromedriver wait4ports svfb xorg-server dbus ttf-treefont mesa-dri-swrast \
   && rm -rf /var/cache/apk/*