# docker-test-kiam

A Docker image for testing KIAM using the aws-cli

## Pre-requisites

- You are already running <https://github.com/uswitch/kiam> in your EKS cluster.
- You have created a IAM role for KIAM testing.

## Install instructions

- Copy the full ARN for your KIAM test role.
- Open test-kiam.yaml in a text editor and replace FULL-ARN with the ARN you copied above.
- Apply test-kiam.yaml to your EKS cluster:

```bash
kubectl apply -f test-kiam.yaml
```

This will create a namespace called *test-kiam* with a pod inside.

## Test instructions

### Get inside the pod

```bash
POD_NAME=$(kubectl get pod -n test-kiam --no-headers -o custom-columns='NAME:.metadata.name')
kubectl --namespace test-kiam exec --stdin --tty $POD_NAME -- /bin/bash
```

### Find your IAM identity

```bash
aws sts get-caller-identity
```

You should then see something like:

```json
{
    "UserId": "ID:kiam-kiam",
    "Account": "ACCOUNT_ID",
    "Arn": "arn:aws:sts::ACCOUNT_ID:assumed-role/ROLE_NAME/kiam-kiam"
}
```

## Removal instructions

```bash
kubectl delete -f test-kiam.yaml
```
