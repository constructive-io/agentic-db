-- Deploy: schemas/agentic_db_permissions_private/grants/usage/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT USAGE ON SCHEMA agentic_db_permissions_private TO authenticated;

