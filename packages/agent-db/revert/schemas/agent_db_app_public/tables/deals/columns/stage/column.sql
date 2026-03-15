-- Revert: schemas/agent_db_app_public/tables/deals/columns/stage/column


ALTER TABLE "agent_db_app_public".deals 
  DROP COLUMN stage RESTRICT;


