# Ansible container

This image is packaged with SBOM and provanance:
To view the SBOM embedded in the image use following command:

```shell
docker buildx imagetools inspect ghcr.io/santoshkal/ansible:v1.0.0 --format '{{ json .SBOM.SPDX }}'
```

To view the provanance of the built image:

```
docker buildx imagetools inspect ghcr.io/santoshkal/ansible:v1.0.0 --format '{{ json .Provenance.SLSA }}'
```
