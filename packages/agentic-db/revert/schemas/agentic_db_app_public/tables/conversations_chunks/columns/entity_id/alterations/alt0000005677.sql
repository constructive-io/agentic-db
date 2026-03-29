-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/entity_id/alterations/alt0000005677


ALTER TABLE agentic_db_app_public.conversations_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


