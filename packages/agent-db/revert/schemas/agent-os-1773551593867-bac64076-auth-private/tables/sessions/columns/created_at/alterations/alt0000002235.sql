-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/created_at/alterations/alt0000002235


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  ALTER COLUMN created_at DROP DEFAULT;


