-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/columns/entity_id/alterations/alt0000003176


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".task_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


