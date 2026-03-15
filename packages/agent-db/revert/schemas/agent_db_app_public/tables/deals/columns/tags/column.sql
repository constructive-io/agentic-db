-- Revert: schemas/agent_db_app_public/tables/deals/columns/tags/column


ALTER TABLE agent_db_app_public.deals 
  DROP COLUMN tags RESTRICT;


