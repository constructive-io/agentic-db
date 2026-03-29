-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/alterations/alt0000004849
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/column


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN session_id SET NOT NULL;

