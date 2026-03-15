-- Revert: schemas/agent_db_app_public/tables/rules/columns/kind/column


ALTER TABLE agent_db_app_public.rules 
  DROP COLUMN kind RESTRICT;


