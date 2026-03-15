-- Deploy: schemas/agent_db_memberships_public/schema/default_table_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_memberships_public GRANT ALL ON TABLES TO administrator;

