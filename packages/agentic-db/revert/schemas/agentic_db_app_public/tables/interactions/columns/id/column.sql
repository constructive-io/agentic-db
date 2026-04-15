-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/id/column


ALTER TABLE agentic_db_app_public.interactions 
  DROP COLUMN id RESTRICT;


