#!/bin/bash

#Creacion de usuarios IAM
aws iam create-user --user-name user1
aws iam create-user --user-name user2
aws iam create-user --user-name user3

#Asignacion de permisos IAM
aws iam attach-user-policy --user-name user1 --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
aws iam attach-user-policy --user-name user2 --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
aws iam attach-user-policy --user-name user3 --policy-arn arn:aws:iam::aws:policy/AdministratorAccess