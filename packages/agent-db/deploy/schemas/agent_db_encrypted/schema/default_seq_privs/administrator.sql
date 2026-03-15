-- Deploy: schemas/agent_db_encrypted/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_encrypted GRANT USAGE ON SEQUENCES TO administrator;

