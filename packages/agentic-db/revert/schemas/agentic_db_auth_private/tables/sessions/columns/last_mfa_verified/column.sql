-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/last_mfa_verified/column


ALTER TABLE agentic_db_auth_private.sessions 
  DROP COLUMN last_mfa_verified RESTRICT;


