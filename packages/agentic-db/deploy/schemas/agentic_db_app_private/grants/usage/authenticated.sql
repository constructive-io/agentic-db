-- Deploy: schemas/agentic_db_app_private/grants/usage/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT USAGE ON SCHEMA agentic_db_app_private TO authenticated;

