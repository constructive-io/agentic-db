-- Revert: schemas/agent_db_app_public/tables/files/columns/updated_at/column


ALTER TABLE agent_db_app_public.files 
  DROP COLUMN updated_at RESTRICT;


