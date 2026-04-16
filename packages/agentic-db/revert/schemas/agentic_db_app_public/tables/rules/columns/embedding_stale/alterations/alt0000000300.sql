-- Revert: schemas/agentic_db_app_public/tables/rules/columns/embedding_stale/alterations/alt0000000300


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN embedding_stale DROP NOT NULL;


