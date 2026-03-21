-- Revert: schemas/agentic_db_app_public/tables/tools/columns/type/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN type RESTRICT;


