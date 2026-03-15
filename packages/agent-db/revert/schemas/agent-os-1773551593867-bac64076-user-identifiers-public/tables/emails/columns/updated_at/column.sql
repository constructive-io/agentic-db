-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  DROP COLUMN updated_at RESTRICT;


