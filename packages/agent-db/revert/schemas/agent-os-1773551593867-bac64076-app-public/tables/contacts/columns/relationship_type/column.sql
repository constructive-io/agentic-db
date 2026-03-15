-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/relationship_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DROP COLUMN relationship_type RESTRICT;


