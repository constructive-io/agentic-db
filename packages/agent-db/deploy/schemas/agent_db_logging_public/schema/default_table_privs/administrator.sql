-- Deploy: schemas/agent_db_logging_public/schema/default_table_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_logging_public GRANT ALL ON TABLES TO administrator;

