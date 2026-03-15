-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/created_at/alterations/alt0000001295




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
    ALTER COLUMN created_at DROP DEFAULT;



