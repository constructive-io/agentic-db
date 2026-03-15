-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/updated_at/alterations/alt0000001252




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflow_runs 
    ALTER COLUMN updated_at DROP DEFAULT;



