-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/created_at/alterations/alt0000003100




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
    ALTER COLUMN created_at DROP DEFAULT;



