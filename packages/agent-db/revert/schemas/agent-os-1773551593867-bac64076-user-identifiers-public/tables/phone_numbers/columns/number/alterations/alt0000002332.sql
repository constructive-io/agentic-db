-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/number/alterations/alt0000002332


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
  ALTER COLUMN number DROP NOT NULL;


