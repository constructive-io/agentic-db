-- Revert: schemas/agent_db_app_public/tables/deals/columns/updated_at/column


ALTER TABLE "agent_db_app_public".deals 
  DROP COLUMN updated_at RESTRICT;


