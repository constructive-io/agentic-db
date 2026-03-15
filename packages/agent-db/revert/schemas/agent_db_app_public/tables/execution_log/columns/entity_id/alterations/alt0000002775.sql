-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/entity_id/alterations/alt0000002775


ALTER TABLE "agent_db_app_public".execution_log 
  ALTER COLUMN entity_id DROP NOT NULL;


