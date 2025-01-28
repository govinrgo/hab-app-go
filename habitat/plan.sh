pkg_name=hab-app-go
pkg_origin=govinrgo
pkg_version="0.1.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_build_deps=(core/go21)
pkg_bin_dirs=(bin)
pkg_description="lists all on prem builder packages and their dependencies in an origin."
#pkg_target="aarch64-darwin"

do_build() {
  CGO_ENABLED=0 go build -o "${pkg_prefix}/bin/hab-app-go" main.go
}

do_install() {
  #CGO_ENABLED=0 go build -installsuffix 'static' -o "$pkg_prefix"/bin/hab-app-go main.go
  CGO_ENABLED=0 go build -o "${pkg_prefix}/bin/hab-app-go" main.go
}

do_strip() {
  return 0
}

