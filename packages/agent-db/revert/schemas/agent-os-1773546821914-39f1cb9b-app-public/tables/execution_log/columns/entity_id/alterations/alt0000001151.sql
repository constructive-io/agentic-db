-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/entity_id/alterations/alt0000001151


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ALTER COLUMN entity_id DROP NOT NULL;


