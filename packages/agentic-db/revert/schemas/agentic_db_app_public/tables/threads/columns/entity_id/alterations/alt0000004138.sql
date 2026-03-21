-- Revert: schemas/agentic_db_app_public/tables/threads/columns/entity_id/alterations/alt0000004138


ALTER TABLE agentic_db_app_public.threads 
  ALTER COLUMN entity_id DROP NOT NULL;


