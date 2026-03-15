-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/entity_id/alterations/alt0000002760


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  ALTER COLUMN entity_id DROP NOT NULL;


