-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/alterations/alt0000003119


ALTER TABLE agentic_db_app_public.conversations_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


