{ pkgs }: {
	deps = [
        pkgs.lsof
        pkgs.ruby_3_0
        pkgs.rubyPackages_3_0.solargraph
        pkgs.rufo
        pkgs.sqlite
        pkgs.yarn
	];
}