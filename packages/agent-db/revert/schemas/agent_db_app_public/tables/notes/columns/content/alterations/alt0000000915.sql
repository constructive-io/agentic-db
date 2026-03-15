-- Revert: schemas/agent_db_app_public/tables/notes/columns/content/alterations/alt0000000915


ALTER TABLE agent_db_app_public.notes 
  ALTER COLUMN content DROP NOT NULL;


