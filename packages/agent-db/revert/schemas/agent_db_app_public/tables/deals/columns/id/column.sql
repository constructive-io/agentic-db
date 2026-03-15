-- Revert: schemas/agent_db_app_public/tables/deals/columns/id/column


ALTER TABLE agent_db_app_public.deals 
  DROP COLUMN id RESTRICT;


