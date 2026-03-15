-- Deploy: schemas/constructive-metaschema-modules-public/schema/default_table_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/constructive-metaschema-modules-public/schema
-- requires: schemas/constructive-private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "constructive-metaschema-modules-public" GRANT ALL ON TABLES TO administrator;

