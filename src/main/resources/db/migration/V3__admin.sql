INSERT INTO public.t_user(password, username) values ('$2y$12$ch1Qx9pM1Joa2GujgtaMue4yFui8PaV1lQzXoAKYtDeY9Je19h3H2','admin');

INSERT INTO public.t_user_roles(user_id, roles_id)
VALUES (1, 1);

INSERT INTO public.t_user_roles(user_id, roles_id)
VALUES (1, 2);