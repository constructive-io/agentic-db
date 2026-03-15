-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/updated_at/alterations/alt0000001197


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
  ALTER COLUMN updated_at DROP NOT NULL;


