-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/updated_at/alterations/alt0000003120




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
    ALTER COLUMN updated_at DROP DEFAULT;



