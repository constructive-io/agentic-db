-- Deploy: schemas/agent_db_auth_public/schema/default_seq_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_auth_public GRANT USAGE ON SEQUENCES TO authenticated;

