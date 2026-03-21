-- Revert: schemas/agentic_db_app_public/tables/files/constraints/files_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.files 
  DROP CONSTRAINT files_entity_id_fkey;


