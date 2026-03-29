-- Deploy: schemas/agentic_db_app_private/schema/default_function_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_app_private GRANT ALL ON FUNCTIONS TO administrator;

