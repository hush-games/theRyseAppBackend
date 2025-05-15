drop policy "Admins can insert" on "public"."resources";

drop policy "Allow all to read" on "public"."resources";

revoke delete on table "public"."labels" from "anon";

revoke insert on table "public"."labels" from "anon";

revoke references on table "public"."labels" from "anon";

revoke select on table "public"."labels" from "anon";

revoke trigger on table "public"."labels" from "anon";

revoke truncate on table "public"."labels" from "anon";

revoke update on table "public"."labels" from "anon";

revoke delete on table "public"."labels" from "authenticated";

revoke insert on table "public"."labels" from "authenticated";

revoke references on table "public"."labels" from "authenticated";

revoke select on table "public"."labels" from "authenticated";

revoke trigger on table "public"."labels" from "authenticated";

revoke truncate on table "public"."labels" from "authenticated";

revoke update on table "public"."labels" from "authenticated";

revoke delete on table "public"."labels" from "service_role";

revoke insert on table "public"."labels" from "service_role";

revoke references on table "public"."labels" from "service_role";

revoke select on table "public"."labels" from "service_role";

revoke trigger on table "public"."labels" from "service_role";

revoke truncate on table "public"."labels" from "service_role";

revoke update on table "public"."labels" from "service_role";

revoke delete on table "public"."profiles" from "anon";

revoke insert on table "public"."profiles" from "anon";

revoke references on table "public"."profiles" from "anon";

revoke select on table "public"."profiles" from "anon";

revoke trigger on table "public"."profiles" from "anon";

revoke truncate on table "public"."profiles" from "anon";

revoke update on table "public"."profiles" from "anon";

revoke delete on table "public"."profiles" from "authenticated";

revoke insert on table "public"."profiles" from "authenticated";

revoke references on table "public"."profiles" from "authenticated";

revoke select on table "public"."profiles" from "authenticated";

revoke trigger on table "public"."profiles" from "authenticated";

revoke truncate on table "public"."profiles" from "authenticated";

revoke update on table "public"."profiles" from "authenticated";

revoke delete on table "public"."profiles" from "service_role";

revoke insert on table "public"."profiles" from "service_role";

revoke references on table "public"."profiles" from "service_role";

revoke select on table "public"."profiles" from "service_role";

revoke trigger on table "public"."profiles" from "service_role";

revoke truncate on table "public"."profiles" from "service_role";

revoke update on table "public"."profiles" from "service_role";

revoke delete on table "public"."resources" from "anon";

revoke insert on table "public"."resources" from "anon";

revoke references on table "public"."resources" from "anon";

revoke select on table "public"."resources" from "anon";

revoke trigger on table "public"."resources" from "anon";

revoke truncate on table "public"."resources" from "anon";

revoke update on table "public"."resources" from "anon";

revoke delete on table "public"."resources" from "authenticated";

revoke insert on table "public"."resources" from "authenticated";

revoke references on table "public"."resources" from "authenticated";

revoke select on table "public"."resources" from "authenticated";

revoke trigger on table "public"."resources" from "authenticated";

revoke truncate on table "public"."resources" from "authenticated";

revoke update on table "public"."resources" from "authenticated";

revoke delete on table "public"."resources" from "service_role";

revoke insert on table "public"."resources" from "service_role";

revoke references on table "public"."resources" from "service_role";

revoke select on table "public"."resources" from "service_role";

revoke trigger on table "public"."resources" from "service_role";

revoke truncate on table "public"."resources" from "service_role";

revoke update on table "public"."resources" from "service_role";

alter table "public"."labels" drop constraint "labels_label_name_key";

alter table "public"."profiles" drop constraint "profiles_id_fkey";

alter table "public"."profiles" drop constraint "profiles_role_check";

alter table "public"."resources" drop constraint "resources_created_by_fkey";

alter table "public"."labels" drop constraint "labels_pkey";

alter table "public"."profiles" drop constraint "profiles_pkey";

alter table "public"."resources" drop constraint "resources_pkey";

drop index if exists "public"."labels_label_name_key";

drop index if exists "public"."labels_pkey";

drop index if exists "public"."profiles_pkey";

drop index if exists "public"."resources_pkey";

drop table "public"."labels";

drop table "public"."profiles";

drop table "public"."resources";

create table "public"."test" (
    "id" integer not null,
    "name" text,
    "username" text
);


grant delete on table "public"."test" to "anon";

grant insert on table "public"."test" to "anon";

grant references on table "public"."test" to "anon";

grant select on table "public"."test" to "anon";

grant trigger on table "public"."test" to "anon";

grant truncate on table "public"."test" to "anon";

grant update on table "public"."test" to "anon";

grant delete on table "public"."test" to "authenticated";

grant insert on table "public"."test" to "authenticated";

grant references on table "public"."test" to "authenticated";

grant select on table "public"."test" to "authenticated";

grant trigger on table "public"."test" to "authenticated";

grant truncate on table "public"."test" to "authenticated";

grant update on table "public"."test" to "authenticated";

grant delete on table "public"."test" to "service_role";

grant insert on table "public"."test" to "service_role";

grant references on table "public"."test" to "service_role";

grant select on table "public"."test" to "service_role";

grant trigger on table "public"."test" to "service_role";

grant truncate on table "public"."test" to "service_role";

grant update on table "public"."test" to "service_role";


