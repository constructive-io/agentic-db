-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/columns/created_at/alterations/alt0000000713


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails 
  ALTER COLUMN created_at DROP DEFAULT;


