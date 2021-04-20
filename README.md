# aah

Some screenshots:

## Contact summary

Wide screens:

![Screenshot](/images/contact%20summary%20-%20wide.png)

Narrower screens:

![Screenshot](/images/contact%20summary%20-%20narrow.png)

Narrow screens:

![Screenshot](/images/contact%20summary%20-%20mobile.png)


## Contact Activities list

Wide

![Screenshot](/images/activities%20-%20wide.png)

Narrow (note tables don't fit!)

![Screenshot](/images/activities%20-%20mobile.png)

## Advanced search

![Screenshot](/images/advanced%20search.png)



The extension is licensed under [AGPL-3.0](LICENSE.txt).

## Requirements

* PHP v7.0+
* CiviCRM (*FIXME: Version number*)

## Installation (Web UI)

This extension has not yet been published for installation via the web UI.

## Installation (CLI, Zip)

Sysadmins and developers may download the `.zip` file for this extension and
install it with the command-line tool [cv](https://github.com/civicrm/cv).

```bash
cd <extension-dir>
cv dl aah@https://github.com/artfulrobot/aah/archive/master.zip
```

## Installation (CLI, Git)

Sysadmins and developers may clone the [Git](https://en.wikipedia.org/wiki/Git) repo for this extension and
install it with the command-line tool [cv](https://github.com/civicrm/cv).

```bash
git clone https://github.com/artfulrobot/aah.git
cv en aah
```

## Usage

(* FIXME: Where would a new user navigate to get started? What changes would they see? *)

## Known Issues

(* FIXME *)

## Developers: how to build

```sh
# Install node code required for build
npm i

# Do a dev build
npx mix build
# Do a dev build and watch for changs
npx mix watch

# Do a production build (pls check in production builds)
npx mix build -p

```
