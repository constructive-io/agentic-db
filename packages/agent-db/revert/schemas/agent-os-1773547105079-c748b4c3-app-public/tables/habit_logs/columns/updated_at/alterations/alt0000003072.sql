-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/updated_at/alterations/alt0000003072




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
    ALTER COLUMN updated_at DROP DEFAULT;



