-- Deploy: schemas/agentic_db_limits_public/schema/default_function_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_limits_public GRANT ALL ON FUNCTIONS TO authenticated;

