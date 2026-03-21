-- Deploy: schemas/agentic_db_app_public/tables/session_archives/columns/session_id/alterations/alt0000004238
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/session_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/updated_at/alterations/alt0000004237


ALTER TABLE agentic_db_app_public.session_archives 
  ALTER COLUMN session_id SET NOT NULL;

