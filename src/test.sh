
#!/usr/bin/env bash

# Expected output for the test
EXPECTED="Hello, Test"

# Load the exported function from src/index.js and call it with 'Test'
# Note: require path must be relative (./src/index) when run from repository root.
OUTPUT=$(node -e "console.log(require('./src/index')('Test'))")

# Proper POSIX test syntax and variable names
if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "Test passed"
    exit 0
else
    echo "Test failed: expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi