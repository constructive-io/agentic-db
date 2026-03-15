-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/last_mfa_verified/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  DROP COLUMN last_mfa_verified RESTRICT;


