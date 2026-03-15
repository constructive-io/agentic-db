-- Revert: schemas/agent_db_app_public/tables/feedback/columns/entity_id/alterations/alt0000004339


ALTER TABLE "agent_db_app_public".feedback 
  ALTER COLUMN entity_id DROP NOT NULL;


