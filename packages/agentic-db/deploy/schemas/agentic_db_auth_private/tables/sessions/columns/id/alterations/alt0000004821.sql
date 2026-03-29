-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/id/alterations/alt0000004821
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/id/column


ALTER TABLE agentic_db_auth_private.sessions 
  ALTER COLUMN id SET NOT NULL;

