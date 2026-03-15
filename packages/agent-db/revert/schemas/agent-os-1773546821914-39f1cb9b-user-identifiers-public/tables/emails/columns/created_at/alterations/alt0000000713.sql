-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/created_at/alterations/alt0000000713


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  ALTER COLUMN created_at DROP DEFAULT;


