-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/columns/task_id/alterations/alt0000001563


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".task_contacts 
  ALTER COLUMN task_id DROP NOT NULL;


