-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/owner_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  DROP COLUMN owner_id RESTRICT;


