-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/constraints/task_contacts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".task_contacts 
  DROP CONSTRAINT task_contacts_entity_id_fkey;


