# material
Collecting all [material][] necessary for the workshop

## Usage
The archive is created when this repository is notified of a change. It automatically builds the archive and publishes it as a package.

### Notifying
If one wishes to kick of a fresh build of the artifact one can use the GitHub action `notify-material` in this repository. Copy it to the `.github/workflows` directory of the notifying repository and customize the repository.

The notifying repository should also have a `ACCESS_TOKEN` secret corresponding to the `user:personal_access_token` where the personal acces token has repo rights.

## Manual
Execute the `make` command. This creates a `material.tar.gz` that should be copied
onto a thumb drive.

[material]: https://github.com/boiding/material/releases/download/latest/material.tar.gz