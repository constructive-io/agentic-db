-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/updated_at/alterations/alt0000003668


ALTER TABLE agentic_db_app_public.conversations_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


