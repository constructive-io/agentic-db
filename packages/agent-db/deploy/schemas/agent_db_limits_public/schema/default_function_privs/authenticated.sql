-- Deploy: schemas/agent_db_limits_public/schema/default_function_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_limits_public GRANT ALL ON FUNCTIONS TO authenticated;

