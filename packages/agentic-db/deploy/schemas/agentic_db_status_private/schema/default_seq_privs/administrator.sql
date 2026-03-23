-- Deploy: schemas/agentic_db_status_private/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_status_private GRANT USAGE ON SEQUENCES TO administrator;

