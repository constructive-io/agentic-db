-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/columns/owner_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails 
  DROP COLUMN owner_id RESTRICT;


