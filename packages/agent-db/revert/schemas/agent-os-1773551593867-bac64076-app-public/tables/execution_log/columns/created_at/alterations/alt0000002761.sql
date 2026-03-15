-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/created_at/alterations/alt0000002761


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  ALTER COLUMN created_at DROP NOT NULL;


