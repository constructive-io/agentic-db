-- Deploy: schemas/constructive-public/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/constructive-public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-public" GRANT ALL ON FUNCTIONS TO authenticated;

