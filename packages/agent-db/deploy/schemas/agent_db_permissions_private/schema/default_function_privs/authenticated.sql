-- Deploy: schemas/agent_db_permissions_private/schema/default_function_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_permissions_private" GRANT ALL ON FUNCTIONS TO authenticated;

