-- Revert: schemas/agent_db_app_public/tables/deals/columns/currency/column


ALTER TABLE agent_db_app_public.deals 
  DROP COLUMN currency RESTRICT;


