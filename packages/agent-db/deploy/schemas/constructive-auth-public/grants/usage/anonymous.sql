-- Deploy: schemas/constructive-auth-public/grants/usage/anonymous
-- made with <3 @ launchql.com

-- requires: schemas/constructive-auth-public/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


GRANT USAGE ON SCHEMA "constructive-auth-public" TO anonymous;

