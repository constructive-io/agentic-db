-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.interactions_chunks 
  DROP COLUMN updated_at RESTRICT;


