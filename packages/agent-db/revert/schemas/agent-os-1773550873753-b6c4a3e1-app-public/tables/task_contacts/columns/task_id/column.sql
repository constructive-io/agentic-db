-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/columns/task_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".task_contacts 
  DROP COLUMN task_id RESTRICT;


