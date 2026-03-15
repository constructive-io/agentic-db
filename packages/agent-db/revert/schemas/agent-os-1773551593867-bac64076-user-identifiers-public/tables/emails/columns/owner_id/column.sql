-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/owner_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  DROP COLUMN owner_id RESTRICT;


