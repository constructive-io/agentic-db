-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/is_primary/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  DROP COLUMN is_primary RESTRICT;


