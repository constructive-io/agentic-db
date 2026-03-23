-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/id/alterations/alt0000003112


ALTER TABLE agentic_db_app_public.conversations_chunks 
  ALTER COLUMN id DROP NOT NULL;


