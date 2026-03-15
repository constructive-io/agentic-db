-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/constraints/emails_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  DROP CONSTRAINT emails_owner_id_fkey;


