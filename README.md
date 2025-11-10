Add these lines to `.zshrc`

```
alias kdebug='
  if kubectl get pod debug-shell &> /dev/null; then
    echo "Connecting to existing debug-shell pod..."
    kubectl exec -it debug-shell -- bash
  else
    echo "Creating a new debug-shell pod..."
    kubectl run debug-shell --rm -i --tty --image iamtienng/ubuntu-utils:latest -- bash
  fi
'
```

Now you can use `kdebug` to create an ubuntu pod with full utilities for debugging.

GitHub Action will run every week to ensure packages are updated.
