-- Revert: schemas/agentic_db_app_public/tables/tools/columns/description/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN description RESTRICT;


