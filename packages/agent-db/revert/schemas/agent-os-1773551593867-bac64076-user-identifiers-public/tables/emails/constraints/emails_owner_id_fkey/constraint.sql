-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/constraints/emails_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".emails 
  DROP CONSTRAINT emails_owner_id_fkey;


