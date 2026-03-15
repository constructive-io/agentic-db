-- Revert: schemas/agent_db_app_public/tables/projects/columns/entity_id/alterations/alt0000004482


ALTER TABLE "agent_db_app_public".projects 
  ALTER COLUMN entity_id DROP NOT NULL;


