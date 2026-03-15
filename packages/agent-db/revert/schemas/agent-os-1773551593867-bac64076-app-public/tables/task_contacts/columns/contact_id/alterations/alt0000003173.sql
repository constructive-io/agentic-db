-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/columns/contact_id/alterations/alt0000003173


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".task_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


