-- Revert: schemas/agentic_db_app_public/tables/templates/columns/description/column


ALTER TABLE agentic_db_app_public.templates 
  DROP COLUMN description RESTRICT;


