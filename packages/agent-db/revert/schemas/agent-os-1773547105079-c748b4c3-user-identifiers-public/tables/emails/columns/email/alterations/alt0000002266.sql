-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/email/alterations/alt0000002266


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  ALTER COLUMN email DROP NOT NULL;


