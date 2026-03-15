-- Revert: schemas/agent_db_app_public/tables/deals/columns/name/column


ALTER TABLE agent_db_app_public.deals 
  DROP COLUMN name RESTRICT;


