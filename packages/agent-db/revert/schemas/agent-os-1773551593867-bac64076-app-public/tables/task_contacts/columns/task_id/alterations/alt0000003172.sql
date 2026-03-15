-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/columns/task_id/alterations/alt0000003172


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".task_contacts 
  ALTER COLUMN task_id DROP NOT NULL;


