-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/constraints/deal_contacts_contact_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deal_contacts 
  DROP CONSTRAINT deal_contacts_contact_id_fkey;


