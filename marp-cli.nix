{ mkYarnPackage, fetchFromGitHub }:
mkYarnPackage {
  name = "marp-cli";
  version = "3.3.0";
  src = fetchFromGitHub {
    owner = "marp-team";
    repo = "marp-cli";
    rev = "v3.3.0";
    sha256 = "sha256-/BJqNXIXeqHr6QsK0jO2GQEnLxn0/N5HFjad4Ox4LXk=";
  };
  buildPhase = ''
    export HOME=$(mktemp -d)
    yarn --offline build
  '';
}
