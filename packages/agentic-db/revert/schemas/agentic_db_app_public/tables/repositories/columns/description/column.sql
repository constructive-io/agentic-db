-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/description/column


ALTER TABLE agentic_db_app_public.repositories 
  DROP COLUMN description RESTRICT;


