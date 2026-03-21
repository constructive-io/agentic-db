-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/description/column


ALTER TABLE agentic_db_status_public.app_level_requirements 
  DROP COLUMN description RESTRICT;


