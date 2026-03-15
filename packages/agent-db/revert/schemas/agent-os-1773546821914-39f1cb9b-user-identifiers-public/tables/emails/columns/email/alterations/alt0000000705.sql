-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/email/alterations/alt0000000705


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  ALTER COLUMN email DROP NOT NULL;


