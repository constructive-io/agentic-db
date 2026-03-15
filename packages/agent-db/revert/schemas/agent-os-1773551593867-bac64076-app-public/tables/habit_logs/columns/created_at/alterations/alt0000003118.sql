-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/created_at/alterations/alt0000003118




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
    ALTER COLUMN created_at DROP DEFAULT;



