-- Revert: schemas/agent_db_app_public/tables/memories/columns/entity_id/alterations/alt0000004235


ALTER TABLE "agent_db_app_public".memories 
  ALTER COLUMN entity_id DROP NOT NULL;


