-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/is_primary/alterations/alt0000002319


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  ALTER COLUMN is_primary DROP NOT NULL;


