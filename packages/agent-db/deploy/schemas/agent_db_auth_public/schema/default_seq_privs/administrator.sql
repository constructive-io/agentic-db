-- Deploy: schemas/agent_db_auth_public/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_auth_public" GRANT USAGE ON SEQUENCES TO administrator;

