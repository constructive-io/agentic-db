-- Revert: schemas/agentic_db_app_public/tables/lists/columns/description/column


ALTER TABLE agentic_db_app_public.lists 
  DROP COLUMN description RESTRICT;


