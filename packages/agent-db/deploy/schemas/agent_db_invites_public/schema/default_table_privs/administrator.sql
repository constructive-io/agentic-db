-- Deploy: schemas/agent_db_invites_public/schema/default_table_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_invites_public GRANT ALL ON TABLES TO administrator;

