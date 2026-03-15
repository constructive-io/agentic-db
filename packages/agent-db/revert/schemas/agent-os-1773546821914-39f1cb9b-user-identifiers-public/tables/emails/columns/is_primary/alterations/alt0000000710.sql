-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/is_primary/alterations/alt0000000710


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  ALTER COLUMN is_primary DROP NOT NULL;


