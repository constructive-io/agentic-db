-- Deploy: schemas/agent_db_invites_private/schema/default_function_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_private/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_invites_private GRANT ALL ON FUNCTIONS TO administrator;

