-- Deploy: schemas/agent_db_simple_secrets/schema/default_function_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_simple_secrets/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_simple_secrets GRANT ALL ON FUNCTIONS TO administrator;

