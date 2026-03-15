-- Revert: schemas/agent_db_app_public/tables/projects/columns/updated_at/alterations/alt0000001101


ALTER TABLE agent_db_app_public.projects 
  ALTER COLUMN updated_at DROP NOT NULL;


