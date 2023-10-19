# Demo 2: az i shifting-left security

```bash
az login --use-device-code
```

```bash
tofu init
```

## Przygotowanie planu w formacie `json`:

```bash
export TF_VAR_password=nomoRescrets2023

# get the plan
tofu plan -input=false -out=tofu_plan.out

# export plan to json
tofu show -json tofu_plan.out > tofu_plan_out.json
```

Narzędzia ([inne dość często widziane](https://spacelift.io/blog/integrating-security-tools-with-spacelift)):



```bash
tfsec
```

```bash
docker run --rm -v $(pwd):/data -t ghcr.io/terraform-linters/tflint-bundle
```
