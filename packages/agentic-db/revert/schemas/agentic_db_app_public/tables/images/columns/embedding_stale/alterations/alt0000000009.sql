-- Revert: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/alterations/alt0000000009


ALTER TABLE agentic_db_app_public.images 
  ALTER COLUMN embedding_stale DROP NOT NULL;


