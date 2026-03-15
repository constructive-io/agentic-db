-- Deploy: schemas/agent_db_auth_private/schema/default_function_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_auth_private GRANT ALL ON FUNCTIONS TO administrator;

