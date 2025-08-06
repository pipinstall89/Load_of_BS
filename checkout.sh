for d in */; do
  if [ -d "$d/.git" ]; then
    echo "Checking $d"
    cd "$d" || continue

    # Capture the list of changed files BEFORE checkout
    changed_files=$(git diff --name-only)

    if [ -n "$changed_files" ]; then
      # Run the checkout to discard changes
      git checkout -- .

      echo "Reset the following files in $d:"
      echo "$changed_files"
    else
      echo " No changes to reset in $d"
    fi

    echo ""
    cd ..
  fi
done
