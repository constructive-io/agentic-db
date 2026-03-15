-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/constraints/task_contacts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".task_contacts 
  DROP CONSTRAINT task_contacts_entity_id_fkey;


