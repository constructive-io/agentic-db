-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/uagent/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  DROP COLUMN uagent RESTRICT;


