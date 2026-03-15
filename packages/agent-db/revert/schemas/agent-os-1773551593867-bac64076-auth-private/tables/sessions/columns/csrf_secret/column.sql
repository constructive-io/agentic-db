-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/csrf_secret/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  DROP COLUMN csrf_secret RESTRICT;


