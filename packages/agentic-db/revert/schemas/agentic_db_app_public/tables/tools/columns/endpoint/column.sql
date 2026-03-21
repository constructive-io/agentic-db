-- Revert: schemas/agentic_db_app_public/tables/tools/columns/endpoint/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN endpoint RESTRICT;


