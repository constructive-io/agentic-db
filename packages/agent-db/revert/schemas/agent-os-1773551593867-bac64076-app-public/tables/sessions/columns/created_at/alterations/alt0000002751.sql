-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/created_at/alterations/alt0000002751


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  ALTER COLUMN created_at DROP NOT NULL;


