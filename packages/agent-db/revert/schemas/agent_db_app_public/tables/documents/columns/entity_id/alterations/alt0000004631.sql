-- Revert: schemas/agent_db_app_public/tables/documents/columns/entity_id/alterations/alt0000004631


ALTER TABLE "agent_db_app_public".documents 
  ALTER COLUMN entity_id DROP NOT NULL;


