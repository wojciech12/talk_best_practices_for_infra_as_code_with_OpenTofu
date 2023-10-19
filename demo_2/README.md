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

Jest wiele narzędzi, które działając na planie może wcześnie w procesie deploymentu wyłapać błędy:

- [tfsec](https://github.com/aquasecurity/tfsec):


  ```bash
  tfsec
  ```

- [kics](https://docs.kics.io/):

  ```bash
  docker run -v .:/tf checkmarx/kics:latest scan -p "/tf" -o "/tf/"
  ```

Lista popularnych narzędz OSS do skanowania kodu, które często widzimy -- [artykuł](https://spacelift.io/blog/integrating-security-tools-with-spacelift).