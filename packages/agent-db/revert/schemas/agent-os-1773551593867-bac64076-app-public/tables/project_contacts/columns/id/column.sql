-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".project_contacts 
  DROP COLUMN id RESTRICT;


