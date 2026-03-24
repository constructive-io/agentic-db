-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/description/column


ALTER TABLE agentic_db_app_public.tasks 
  DROP COLUMN description RESTRICT;


