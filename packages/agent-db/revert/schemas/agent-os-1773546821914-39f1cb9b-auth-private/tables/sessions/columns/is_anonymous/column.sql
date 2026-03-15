-- Revert: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/is_anonymous/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
  DROP COLUMN is_anonymous RESTRICT;


