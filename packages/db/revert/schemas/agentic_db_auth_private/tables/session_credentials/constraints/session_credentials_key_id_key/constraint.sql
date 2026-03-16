-- Revert: schemas/agentic_db_auth_private/tables/session_credentials/constraints/session_credentials_key_id_key/constraint


ALTER TABLE "agentic_db_auth_private".session_credentials 
  DROP CONSTRAINT session_credentials_key_id_key;


