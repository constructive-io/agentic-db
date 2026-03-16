-- Revert: schemas/agent_db_app_public/tables/processes/columns/entity_id/alterations/alt0000002027


ALTER TABLE "agent_db_app_public".processes 
  ALTER COLUMN entity_id DROP NOT NULL;


