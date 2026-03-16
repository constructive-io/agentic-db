-- Revert: schemas/agent_db_app_public/tables/rules/columns/entity_id/alterations/alt0000001898


ALTER TABLE "agent_db_app_public".rules 
  ALTER COLUMN entity_id DROP NOT NULL;


