-- Revert: schemas/agentic_db_app_public/tables/lists/columns/updated_at/column


ALTER TABLE agentic_db_app_public.lists 
  DROP COLUMN updated_at RESTRICT;


