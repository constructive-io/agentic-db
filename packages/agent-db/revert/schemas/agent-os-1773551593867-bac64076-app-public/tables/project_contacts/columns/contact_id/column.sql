-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/columns/contact_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".project_contacts 
  DROP COLUMN contact_id RESTRICT;


