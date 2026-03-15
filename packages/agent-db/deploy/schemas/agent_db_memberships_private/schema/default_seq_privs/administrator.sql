-- Deploy: schemas/agent_db_memberships_private/schema/default_seq_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_memberships_private" GRANT USAGE ON SEQUENCES TO administrator;

