-- Deploy: schemas/agentic_db_users_public/schema/default_function_privs/anonymous
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_users_public GRANT ALL ON FUNCTIONS TO anonymous;

