-- Revert: schemas/agent_db_app_public/tables/lists/columns/entity_id/alterations/alt0000004688


ALTER TABLE "agent_db_app_public".lists 
  ALTER COLUMN entity_id DROP NOT NULL;


