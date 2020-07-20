#!/bin/bash -x
USER_SECRET='dH34xJaa23';
if[ $USER_SECRET ];
then
	$USER_SECRET;
	echo "Usersecret created"
else
	echo "Usersecret already exists";
fi
