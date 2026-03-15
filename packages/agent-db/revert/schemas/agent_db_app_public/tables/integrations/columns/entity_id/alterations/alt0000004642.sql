-- Revert: schemas/agent_db_app_public/tables/integrations/columns/entity_id/alterations/alt0000004642


ALTER TABLE "agent_db_app_public".integrations 
  ALTER COLUMN entity_id DROP NOT NULL;


