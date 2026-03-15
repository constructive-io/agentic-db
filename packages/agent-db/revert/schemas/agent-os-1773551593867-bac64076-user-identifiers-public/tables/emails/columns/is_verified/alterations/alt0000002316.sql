-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/is_verified/alterations/alt0000002316


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  ALTER COLUMN is_verified DROP NOT NULL;


