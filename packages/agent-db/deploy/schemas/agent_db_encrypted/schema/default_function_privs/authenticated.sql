-- Deploy: schemas/agent_db_encrypted/schema/default_function_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_encrypted GRANT ALL ON FUNCTIONS TO authenticated;

