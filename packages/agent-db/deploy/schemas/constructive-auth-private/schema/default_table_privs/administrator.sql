-- Deploy: schemas/constructive-auth-private/schema/default_table_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/constructive-auth-private/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-auth-private" GRANT ALL ON TABLES TO administrator;

