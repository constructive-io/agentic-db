-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/constraints/integrations_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  DROP CONSTRAINT integrations_entity_id_fkey;


