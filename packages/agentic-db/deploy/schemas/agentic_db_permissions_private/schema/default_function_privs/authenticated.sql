-- Deploy: schemas/agentic_db_permissions_private/schema/default_function_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_permissions_private GRANT ALL ON FUNCTIONS TO authenticated;

