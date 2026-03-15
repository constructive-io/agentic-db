-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/created_at/alterations/alt0000000626


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
  ALTER COLUMN created_at DROP DEFAULT;


