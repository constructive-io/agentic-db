-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


ALTER TABLE "agentic_db_auth_private".session_credentials 
  ADD COLUMN created_at timestamptz;

