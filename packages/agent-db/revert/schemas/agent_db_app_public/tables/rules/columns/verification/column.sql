-- Revert: schemas/agent_db_app_public/tables/rules/columns/verification/column


ALTER TABLE agent_db_app_public.rules 
  DROP COLUMN verification RESTRICT;


