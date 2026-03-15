-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/activity_log/columns/target_id/alterations/alt0000001301


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".activity_log 
  ALTER COLUMN target_id DROP NOT NULL;


