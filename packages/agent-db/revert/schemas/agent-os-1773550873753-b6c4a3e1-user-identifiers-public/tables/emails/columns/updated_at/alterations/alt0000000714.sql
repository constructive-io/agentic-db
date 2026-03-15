-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/columns/updated_at/alterations/alt0000000714


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails 
  ALTER COLUMN updated_at DROP DEFAULT;


