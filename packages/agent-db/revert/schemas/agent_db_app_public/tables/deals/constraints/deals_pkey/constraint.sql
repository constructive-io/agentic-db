-- Revert: schemas/agent_db_app_public/tables/deals/constraints/deals_pkey/constraint


ALTER TABLE "agent_db_app_public".deals 
  DROP CONSTRAINT deals_pkey;


