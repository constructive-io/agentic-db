-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/updated_at/column


ALTER TABLE agentic_db_app_public.interactions 
  DROP COLUMN updated_at RESTRICT;


