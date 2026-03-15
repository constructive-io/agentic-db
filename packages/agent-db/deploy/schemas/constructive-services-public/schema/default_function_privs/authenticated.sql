-- Deploy: schemas/constructive-services-public/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/constructive-services-public/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-services-public" GRANT ALL ON FUNCTIONS TO authenticated;

