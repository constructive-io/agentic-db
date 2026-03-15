-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000000621
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/fingerprint_mode/column



ALTER TABLE agent_db_auth_private.sessions 
    ALTER COLUMN fingerprint_mode SET DEFAULT 'lax';

