-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/id/alterations/alt0000004673


ALTER TABLE agentic_db_app_public.list_chunks 
  ALTER COLUMN id DROP NOT NULL;


