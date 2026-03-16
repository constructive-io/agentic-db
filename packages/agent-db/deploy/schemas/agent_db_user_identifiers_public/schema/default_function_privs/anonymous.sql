-- Deploy: schemas/agent_db_user_identifiers_public/schema/default_function_privs/anonymous
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_user_identifiers_public" GRANT ALL ON FUNCTIONS TO anonymous;

