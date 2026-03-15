-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/updated_at/alterations/alt0000002323


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  ALTER COLUMN updated_at DROP DEFAULT;


