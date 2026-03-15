-- Deploy: schemas/agent_db_profiles_private/schema/default_function_privs/authenticated
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_profiles_private GRANT ALL ON FUNCTIONS TO authenticated;

