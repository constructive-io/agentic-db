-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/description/column


ALTER TABLE agentic_db_app_public.workflows 
  DROP COLUMN description RESTRICT;


