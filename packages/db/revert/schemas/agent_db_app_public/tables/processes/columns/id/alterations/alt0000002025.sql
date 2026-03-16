-- Revert: schemas/agent_db_app_public/tables/processes/columns/id/alterations/alt0000002025


ALTER TABLE "agent_db_app_public".processes 
  ALTER COLUMN id DROP NOT NULL;


