-- Revert: schemas/agentic_db_app_public/tables/lists/columns/type/column


ALTER TABLE agentic_db_app_public.lists 
  DROP COLUMN type RESTRICT;


