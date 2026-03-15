-- Revert: schemas/agent_db_app_public/tables/templates/columns/updated_at/column


ALTER TABLE agent_db_app_public.templates 
  DROP COLUMN updated_at RESTRICT;


