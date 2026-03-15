-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/created_at/alterations/alt0000001509




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
    ALTER COLUMN created_at DROP DEFAULT;



