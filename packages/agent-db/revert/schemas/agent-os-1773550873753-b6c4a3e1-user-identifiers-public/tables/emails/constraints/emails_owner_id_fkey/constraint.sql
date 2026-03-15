-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/constraints/emails_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails 
  DROP CONSTRAINT emails_owner_id_fkey;


