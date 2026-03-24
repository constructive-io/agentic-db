-- Deploy: schemas/agentic_db_invites_public/schema/default_table_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_invites_public GRANT ALL ON TABLES TO administrator;

