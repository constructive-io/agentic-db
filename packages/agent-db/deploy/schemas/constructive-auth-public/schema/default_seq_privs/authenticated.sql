-- Deploy: schemas/constructive-auth-public/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/constructive-auth-public/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-public" GRANT USAGE ON SEQUENCES TO authenticated;

