-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/fingerprint_mode/alterations/alt0000003451
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/fingerprint_mode/column


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN fingerprint_mode SET NOT NULL;

