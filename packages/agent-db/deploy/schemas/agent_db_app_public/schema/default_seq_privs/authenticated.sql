-- Deploy: schemas/agent_db_app_public/schema/default_seq_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_app_public GRANT USAGE ON SEQUENCES TO authenticated;

