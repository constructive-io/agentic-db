-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expense_contacts 
  DROP COLUMN entity_id RESTRICT;


