-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/embedding_stale/alterations/alt0000013040


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN embedding_stale DROP NOT NULL;


