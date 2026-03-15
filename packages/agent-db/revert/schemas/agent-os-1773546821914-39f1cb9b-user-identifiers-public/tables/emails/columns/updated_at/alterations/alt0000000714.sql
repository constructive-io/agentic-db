-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/updated_at/alterations/alt0000000714


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  ALTER COLUMN updated_at DROP DEFAULT;


