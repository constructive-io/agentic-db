-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/created_at/alterations/alt0000001239




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
    ALTER COLUMN created_at DROP DEFAULT;



