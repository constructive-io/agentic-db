-- Deploy: schemas/agentic_db_invites_private/schema/default_function_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_invites_private GRANT ALL ON FUNCTIONS TO administrator;

