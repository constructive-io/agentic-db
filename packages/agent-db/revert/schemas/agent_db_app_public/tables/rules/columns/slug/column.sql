-- Revert: schemas/agent_db_app_public/tables/rules/columns/slug/column


ALTER TABLE agent_db_app_public.rules 
  DROP COLUMN slug RESTRICT;


