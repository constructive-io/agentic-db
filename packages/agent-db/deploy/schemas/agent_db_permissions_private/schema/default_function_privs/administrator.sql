-- Deploy: schemas/agent_db_permissions_private/schema/default_function_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_permissions_private" GRANT ALL ON FUNCTIONS TO administrator;

