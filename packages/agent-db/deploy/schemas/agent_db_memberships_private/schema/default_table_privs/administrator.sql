-- Deploy: schemas/agent_db_memberships_private/schema/default_table_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_memberships_private" GRANT ALL ON TABLES TO administrator;

