-- Deploy: schemas/constructive-auth-private/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/constructive-auth-private/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" GRANT ALL ON FUNCTIONS TO authenticated;

