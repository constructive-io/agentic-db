-- Deploy: schemas/constructive-metaschema-public/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/constructive-metaschema-public/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-public" GRANT ALL ON FUNCTIONS TO authenticated;

