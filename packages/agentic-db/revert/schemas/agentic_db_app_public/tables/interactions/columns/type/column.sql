-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/type/column


ALTER TABLE agentic_db_app_public.interactions 
  DROP COLUMN type RESTRICT;


