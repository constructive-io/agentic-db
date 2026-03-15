-- Deploy: schemas/agent_db_users_public/schema/default_seq_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_users_public GRANT USAGE ON SEQUENCES TO administrator;

