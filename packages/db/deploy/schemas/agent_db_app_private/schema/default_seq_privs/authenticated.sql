-- Deploy: schemas/agent_db_app_private/schema/default_seq_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_app_private" GRANT USAGE ON SEQUENCES TO authenticated;

