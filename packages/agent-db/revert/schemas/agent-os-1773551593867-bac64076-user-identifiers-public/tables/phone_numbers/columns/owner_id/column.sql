-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/owner_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
  DROP COLUMN owner_id RESTRICT;


