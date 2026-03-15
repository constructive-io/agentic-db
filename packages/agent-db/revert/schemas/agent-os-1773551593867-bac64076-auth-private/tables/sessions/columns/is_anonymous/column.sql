-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/is_anonymous/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  DROP COLUMN is_anonymous RESTRICT;


