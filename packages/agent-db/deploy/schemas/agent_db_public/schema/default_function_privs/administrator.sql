-- Deploy: schemas/agent_db_public/schema/default_function_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_public" GRANT ALL ON FUNCTIONS TO administrator;

