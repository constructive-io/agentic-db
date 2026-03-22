-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/updated_at/alterations/alt0000005300
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/updated_at/column


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN updated_at SET DEFAULT now();

