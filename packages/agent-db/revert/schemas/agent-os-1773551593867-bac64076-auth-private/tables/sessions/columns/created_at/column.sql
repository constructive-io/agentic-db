-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  DROP COLUMN created_at RESTRICT;


