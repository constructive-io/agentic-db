-- Revert: schemas/agentic_db_app_public/tables/files/columns/entity_id/column


ALTER TABLE agentic_db_app_public.files 
  DROP COLUMN entity_id RESTRICT;


