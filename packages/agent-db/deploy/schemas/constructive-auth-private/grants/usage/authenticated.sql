-- Deploy: schemas/constructive-auth-private/grants/usage/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/constructive-auth-private/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


GRANT USAGE ON SCHEMA "constructive-auth-private" TO authenticated;

