-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/id/alterations/alt0000005278


ALTER TABLE agentic_db_app_public.interactions_chunks 
  ALTER COLUMN id DROP NOT NULL;


