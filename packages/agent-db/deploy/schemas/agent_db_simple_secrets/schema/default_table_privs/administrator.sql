-- Deploy: schemas/agent_db_simple_secrets/schema/default_table_privs/administrator
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_simple_secrets" GRANT ALL ON TABLES TO administrator;

