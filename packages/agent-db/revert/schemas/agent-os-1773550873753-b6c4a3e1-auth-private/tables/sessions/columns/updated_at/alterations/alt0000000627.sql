-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/updated_at/alterations/alt0000000627


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
  ALTER COLUMN updated_at DROP DEFAULT;


