-- Deploy: schemas/agent_db_status_private/schema/default_function_privs/anonymous
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_status_private GRANT ALL ON FUNCTIONS TO anonymous;

