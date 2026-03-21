-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/created_at/alterations/alt0000001491
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/created_at/column


ALTER TABLE "agentic_db_auth_private".session_credentials 
  ALTER COLUMN created_at SET DEFAULT now();

