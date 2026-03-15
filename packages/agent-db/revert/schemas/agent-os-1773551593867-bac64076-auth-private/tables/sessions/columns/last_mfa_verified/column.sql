-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/last_mfa_verified/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  DROP COLUMN last_mfa_verified RESTRICT;


