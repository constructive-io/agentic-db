-- Revert: schemas/agent_db_app_public/tables/tags/columns/entity_id/alterations/alt0000001783


ALTER TABLE "agent_db_app_public".tags 
  ALTER COLUMN entity_id DROP NOT NULL;


