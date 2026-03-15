-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000000621




ALTER TABLE agent_db_auth_private.sessions 
    ALTER COLUMN fingerprint_mode DROP DEFAULT;



