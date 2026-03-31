-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/expires_at/alterations/alt0000002728
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/expires_at/column


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN expires_at SET NOT NULL;

