-- Deploy: schemas/agentic_db_users_public/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_users_public GRANT USAGE ON SEQUENCES TO administrator;

