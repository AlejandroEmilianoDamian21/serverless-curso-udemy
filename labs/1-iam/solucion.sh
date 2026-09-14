#!/bin/bash

# Creación de usuarios IAM
aws iam create-user --user-name user1
aws iam create-user --user-name user2
aws iam create-user --user-name user3

# Asignación de política de solo lectura en IAM
aws iam attach-user-policy --user-name user1 --policy-arn arn:aws:iam::aws:policy/IAMReadOnlyAccess
aws iam attach-user-policy --user-name user2 --policy-arn arn:aws:iam::aws:policy/IAMReadOnlyAccess
aws iam attach-user-policy --user-name user3 --policy-arn arn:aws:iam::aws:policy/IAMReadOnlyAccess

# Verificación
aws iam list-attached-user-policies --user-name user1
aws iam list-attached-user-policies --user-name user2
aws iam list-attached-user-policies --user-name user3
