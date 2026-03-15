-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/columns/entity_id/alterations/alt0000002895


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".project_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


