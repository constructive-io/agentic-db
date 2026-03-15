-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/uagent/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
  DROP COLUMN uagent RESTRICT;


