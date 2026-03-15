-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/constraints/integrations_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
  DROP CONSTRAINT integrations_entity_id_fkey;


