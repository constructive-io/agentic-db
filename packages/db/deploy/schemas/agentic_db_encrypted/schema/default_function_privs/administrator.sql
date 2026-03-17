-- Deploy: schemas/agentic_db_encrypted/schema/default_function_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_encrypted" GRANT ALL ON FUNCTIONS TO administrator;

