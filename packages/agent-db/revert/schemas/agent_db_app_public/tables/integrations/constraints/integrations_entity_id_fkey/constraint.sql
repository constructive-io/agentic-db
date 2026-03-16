-- Revert: schemas/agent_db_app_public/tables/integrations/constraints/integrations_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".integrations 
  DROP CONSTRAINT integrations_entity_id_fkey;


