-- Deploy: schemas/agentic_db_permissions_public/grants/usage/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT USAGE ON SCHEMA agentic_db_permissions_public TO authenticated;

