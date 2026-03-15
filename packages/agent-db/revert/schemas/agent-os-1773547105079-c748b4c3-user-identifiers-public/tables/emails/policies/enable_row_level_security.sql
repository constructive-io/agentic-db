-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  DISABLE ROW LEVEL SECURITY;


