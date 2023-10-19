# Demo 2: az i shifting-left security

## Zainicjowanie projektu OpenTofu

```bash
tofu init
```

## Logowanie do chmury

```bash
az login --use-device-code
```

## Przygotowanie planu w formacie `json`:

```bash
export TF_VAR_password=nomoRescrets2023

# get the plan
tofu plan -input=false -out=tofu_plan.out

# export plan to json
tofu show -json tofu_plan.out > tofu_plan_out.json
```

Jest wiele narzędzi (([popularne narzędzia OSS, które często widzimy](https://spacelift.io/blog/integrating-security-tools-with-spacelift))), które działając na planie może wcześnie w procesie deploymentu wyłapać błędy:

- [tfsec](https://github.com/aquasecurity/tfsec):


   ```bash
   tfsec
   ```

- [tflint](https://github.com/terraform-linters/tflint):

   ```bash
   docker run --rm -v $(pwd):/data -t ghcr.io/terraform-linters/tflint-bundle
   ```
