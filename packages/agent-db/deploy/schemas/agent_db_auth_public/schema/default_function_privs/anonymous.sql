-- Deploy: schemas/agent_db_auth_public/schema/default_function_privs/anonymous
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_auth_public GRANT ALL ON FUNCTIONS TO anonymous;

