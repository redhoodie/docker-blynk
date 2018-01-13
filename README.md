# Blynk Server Docker

[![](https://raw.githubusercontent.com/riftbit/docker-blynk/master/logo.png)](https://www.blynk.cc/)

 [![](https://images.microbadger.com/badges/image/riftbit/blynk.svg)](https://microbadger.com/images/riftbit/blynk) [![Docker Pulls](https://img.shields.io/docker/pulls/riftbit/blynk.svg)](https://hub.docker.com/r/riftbit/blynk/) [![Docker Stars](https://img.shields.io/docker/stars/riftbit/blynk.svg)](https://hub.docker.com/r/riftbit/blynk/) [![GitHub last commit](https://img.shields.io/github/last-commit/riftbit/docker-blynk.svg)](https://github.com/riftbit/docker-blynk) [![Docker Build Status](https://img.shields.io/docker/build/riftbit/blynk.svg)](https://hub.docker.com/r/riftbit/blynk/)

Project Links: [Docker](https://hub.docker.com/r/riftbit/blynk/) | [Github](https://github.com/riftbit/docker-blynk) | [Blynk](https://www.blynk.cc/)

## About Blink Project
[![](https://static1.squarespace.com/static/54765ba7e4b0d055ee0b47a6/54a0c183e4b045b45021b121/56f7230b1711077fa4d1549d/1459036942430/5.5+Device+1.jpg?format=500w)](https://www.blynk.cc/)

**Blynk** was designed for the Internet of Things. It can control hardware remotely, it can display sensor data, it can store data, vizualize it and do many other cool things.

There are three major components in the platform:

 - **Blynk App** - allows to you create amazing interfaces for your projects using various widgets we provide.

 - **Blynk Server** - responsible for all the communications between the smartphone and hardware. You can use our Blynk Cloud or run your private Blynk server locally. It’s open-source, could easily handle thousands of devices and can even be launched on a Raspberry Pi.

 - **Blynk Libraries** - for all the popular hardware platforms - enable communication with the server and process all the incoming and outcoming commands.

Now imagine: every time you press a Button in the Blynk app, the message travels to space the Blynk Cloud, where it magically finds its way to your hardware. It works the same in the opposite direction and everything happens in a blynk of an eye.

![](http://docs.blynk.cc/images/architecture.png)

### Features
 - Similar API & UI for all supported hardware & devices

 - Connection to the cloud using:
   - WiFi
   - Bluetooth and BLE
   - Ethernet
   - USB (Serial)
   - GSM
   - Others ...

- Set of easy-to-use Widgets

- Direct pin manipulation with no code writing

- Easy to integrate and add new functionality using virtual pins

- History data monitoring via History Graph widget

- Device-to-Device communication using Bridge Widget

- Sending emails, tweets, push notifications, etc.

- New features are constantly added!

You can find [example sketches](https://github.com/blynkkk/blynk-library/tree/master/examples) covering basic Blynk Features. They are included in the library. All the sketches are designed to be easily combined with each other.

### What do I need to Blynk?
At this point you might be thinking: “Ok, I want it. What do I need to get started?” – Just a couple of things, really:

#### 1. Hardware.
An Arduino, Raspberry Pi, or a similar development kit.

Blynk works over the Internet. This means that the hardware you choose should be able to connect to the internet. Some of the boards, like Arduino Uno will need an Ethernet or Wi-Fi Shield to communicate, others are already Internet-enabled: like the ESP8266, Raspberri Pi with WiFi dongle, Particle Photon or SparkFun Blynk Board. But even if you don’t have a shield, you can connect it over USB to your laptop or desktop (it’s a bit more complicated for newbies, but we got you covered). What’s cool, is that the list of hardware that works with Blynk is huge and will keep on growing.

#### 2. A Smartphone.
The Blynk App is a well designed interface builder. It works on both iOS and Android, so no holywars here, ok?

#### Downloads

##### Blynk Apps for iOS or Android
[![](http://linkmaker.itunes.apple.com/images/badges/en-us/badge_appstore-lrg.svg)](https://itunes.apple.com/us/app/blynk-control-arduino-raspberry/id808760481?ls=1&mt=8)
[![](https://play.google.com/intl/en_us/badges/images/badge_new.png)](https://play.google.com/store/apps/details?id=cc.blynk)

##### Blynk Library
[DOWNLOAD THE BLYNK LIBRARY](https://github.com/blynkkk/blynk-library/releases/latest)

In case you forgot, or don’t know how to install Arduino libraries [click here](https://github.com/blynkkk/blynk-library/releases/latest)

## About This Docker Container

### Build Args

 - **VERSION** = 0.29.6 - Blynk Version

### Exposed Ports

 - **7443/tcp** - Administration UI HTTPS port
 - **8080/tcp** - HTTP port
 - **8081/tcp** - Web socket ssl/tls port
 - **8082/tcp** - Web sockets plain tcp/ip port
 - **8440/tcp** - Mqtt hardware server 
 - **8441/tcp** - Hardware ssl/tls port (for hardware that supports SSL/TLS sockets)
 - **8442/tcp** - Hardware plain tcp/ip port
 - **8443/tcp** - Application mutual ssl/tls port
 - **9443/tcp** - HTTPS port

### Volumes

 - **/blynk/data**
 - **/blynk/config**
 
### Additional Info

> Default Admin login email is admin@blynk.cc
>
> Default Admin password is admin

### Container Changelog (dd.mm.yy)

 - **13.01.18** - First build of container
