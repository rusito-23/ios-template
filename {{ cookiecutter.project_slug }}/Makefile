# {{ cookiecutter.project_slug }} Makefile
# Set of tools to interact seamlessly with the {{ cookiecutter.project_name }} project.

# === Constants ====

# General
XED = xed
MINT = mint
GEN = mint run xcodegen
RM = rm
LINT = mint run swiftlint
LINT_OPTS = --strict --quiet

# Pre-Commit
PRE_COMMIT_DST = .git/hooks/pre-commit
PRE_COMMIT_MSG = Run {{ cookiecutter.project_slug }} Pre-Commit

# Project
PRO_SRC = project.yml
PRO_OUT = Shell.xcodeproj
SRC = $(shell find ./Shell/Sources/ -type f -regex ".*\.swift")

# === All ====
.PHONY: all
all:
	@echo "TARGETS:"
	@make -qpRr | egrep -e '^[a-z].*:$$' | sed -e 's~:~~g' | sort

# === Setup ====

# Set up the project from scratch.
.PHONY: setup
setup: bootstrap install-pre-commit

# Install Mint dependencies.
.PHONY: bootstrap
bootstrap:
	@$(MINT) bootstrap

# === Project ====

# Generate the project.
.PHONY: gen
gen: $(PRO_SRC) $(PRO_OUT)

$(PRO_OUT):
	@$(GEN)

# Force regenerate the project.
.PHONY: regen
regen: clean gen

# Generate if needed and open the project on Xcode.
.PHONY: open
open: regen
	@$(XED) .

# === Checkers ====

# Lint all Swift files.
.PHONY: lint
lint:
	@$(LINT) lint $(LINT_OPTS)

# Fix lint for all Swift files.
.PHONY: fix-lint
fix-lint:
	@$(LINT) autocorrect

# Run spell checker through all files.
.PHONY: spellcheck
spellcheck:
	@$(SPELL) $(SPELL_OPTS) $(SRC)

# === Pre-Commit ====

# Install pre-commit script.
.PHONY: install-pre-commit
install-pre-commit:
	@echo "\n# $(PRE_COMMIT_MSG)\n$(MAKE) pre-commit" \
		> $(PRE_COMMIT_DST)

# Run pre-commit checks.
.PHONY: pre-commit
pre-commit: lint spellcheck

# === Build ====

# TODO: Build project.
build:
	@echo "NO-OP"

# TODO: Run project tests.
test:
	@echo "NO-OP"

# TODO: Clean all build data.
.PHONY: clean
clean:
	@$(RM) -rf $(PRO_OUT)
