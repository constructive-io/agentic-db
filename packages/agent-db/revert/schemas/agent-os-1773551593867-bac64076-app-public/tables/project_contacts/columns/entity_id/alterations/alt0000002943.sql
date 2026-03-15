-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/columns/entity_id/alterations/alt0000002943


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".project_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


