-- Revert: schemas/agentic_db_app_public/tables/tools/columns/id/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN id RESTRICT;


