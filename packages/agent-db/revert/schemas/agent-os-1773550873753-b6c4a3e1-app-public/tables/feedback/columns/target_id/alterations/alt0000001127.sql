-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/feedback/columns/target_id/alterations/alt0000001127


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".feedback 
  ALTER COLUMN target_id DROP NOT NULL;


