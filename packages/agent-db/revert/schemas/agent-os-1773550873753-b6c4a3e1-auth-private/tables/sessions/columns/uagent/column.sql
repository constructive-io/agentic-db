-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/uagent/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
  DROP COLUMN uagent RESTRICT;


