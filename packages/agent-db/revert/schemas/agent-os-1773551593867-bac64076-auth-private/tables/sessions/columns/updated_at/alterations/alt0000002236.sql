-- Revert: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/updated_at/alterations/alt0000002236


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  ALTER COLUMN updated_at DROP DEFAULT;


