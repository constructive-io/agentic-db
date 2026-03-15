-- Revert: schemas/agent_db_app_public/tables/deals/columns/entity_id/alterations/alt0000002583


ALTER TABLE "agent_db_app_public".deals 
  ALTER COLUMN entity_id DROP NOT NULL;


