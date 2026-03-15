-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/columns/updated_at/alterations/alt0000002861




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
    ALTER COLUMN updated_at DROP DEFAULT;



