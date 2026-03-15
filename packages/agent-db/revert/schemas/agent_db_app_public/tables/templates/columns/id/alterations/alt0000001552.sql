-- Revert: schemas/agent_db_app_public/tables/templates/columns/id/alterations/alt0000001552


ALTER TABLE agent_db_app_public.templates 
  ALTER COLUMN id DROP NOT NULL;


