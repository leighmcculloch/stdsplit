update-formula:
	sed -i'' 's/^  sha256 .*$$/  sha256 "'"$$(shasum -a256 stdsplit | cut -d ' ' -f1)"'"/g' Formula/stdsplit.rb
	sed -i'' 's/^  version .*$$/  version "'"$$(git rev-list --count HEAD)".0.0'"/g' Formula/stdsplit.rb
