-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/embedding_stale/alterations/alt0000000382


ALTER TABLE agentic_db_app_public.prompts 
  ALTER COLUMN embedding_stale DROP NOT NULL;


