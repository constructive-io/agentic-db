-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/created_at/alterations/alt0000001229




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
    ALTER COLUMN created_at DROP DEFAULT;



