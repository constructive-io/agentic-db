-- Revert: schemas/agentic_db_app_public/tables/images/columns/created_at/column


ALTER TABLE agentic_db_app_public.images 
  DROP COLUMN created_at RESTRICT;


