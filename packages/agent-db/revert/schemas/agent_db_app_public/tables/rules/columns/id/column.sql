-- Revert: schemas/agent_db_app_public/tables/rules/columns/id/column


ALTER TABLE agent_db_app_public.rules 
  DROP COLUMN id RESTRICT;


