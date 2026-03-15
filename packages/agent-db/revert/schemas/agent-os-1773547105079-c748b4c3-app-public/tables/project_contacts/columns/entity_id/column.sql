-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".project_contacts 
  DROP COLUMN entity_id RESTRICT;


