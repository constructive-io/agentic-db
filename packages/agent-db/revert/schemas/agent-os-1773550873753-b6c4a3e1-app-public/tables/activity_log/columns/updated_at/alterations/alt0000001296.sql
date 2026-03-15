-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/activity_log/columns/updated_at/alterations/alt0000001296


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".activity_log 
  ALTER COLUMN updated_at DROP NOT NULL;


