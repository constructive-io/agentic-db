-- Revert: schemas/agent_db_app_public/tables/workflows/columns/entity_id/alterations/alt0000002060


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN entity_id DROP NOT NULL;


