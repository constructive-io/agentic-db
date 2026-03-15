-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_runs/columns/status/alterations/alt0000001254




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_runs 
    ALTER COLUMN status DROP DEFAULT;



