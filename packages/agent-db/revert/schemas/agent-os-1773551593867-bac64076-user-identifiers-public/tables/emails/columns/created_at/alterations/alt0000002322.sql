-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/created_at/alterations/alt0000002322


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  ALTER COLUMN created_at DROP DEFAULT;


