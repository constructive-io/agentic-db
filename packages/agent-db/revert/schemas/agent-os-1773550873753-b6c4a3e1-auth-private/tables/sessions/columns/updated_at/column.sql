-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
  DROP COLUMN updated_at RESTRICT;


