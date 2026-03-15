-- Deploy: schemas/agent_db_permissions_private/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_permissions_private GRANT USAGE ON SEQUENCES TO administrator;

