-- Deploy: schemas/agentic_db_app_public/tables/list_chunks/columns/list_id/alterations/alt0000004704
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/list_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/list_id/column
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/indexes/reminder_chunks_reminder_id_idx


ALTER TABLE agentic_db_app_public.list_chunks 
  ALTER COLUMN list_id SET NOT NULL;

