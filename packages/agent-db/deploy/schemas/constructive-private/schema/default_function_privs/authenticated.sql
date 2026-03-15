-- Deploy: schemas/constructive-private/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/constructive-private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-private" GRANT ALL ON FUNCTIONS TO authenticated;

