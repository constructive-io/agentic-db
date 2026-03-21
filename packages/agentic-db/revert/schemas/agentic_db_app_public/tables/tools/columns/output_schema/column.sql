-- Revert: schemas/agentic_db_app_public/tables/tools/columns/output_schema/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN output_schema RESTRICT;


