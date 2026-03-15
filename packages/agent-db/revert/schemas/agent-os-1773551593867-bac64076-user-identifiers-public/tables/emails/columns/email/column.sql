-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/email/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  DROP COLUMN email RESTRICT;


