-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflow_steps/columns/updated_at/alterations/alt0000001241




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflow_steps 
    ALTER COLUMN updated_at DROP DEFAULT;



