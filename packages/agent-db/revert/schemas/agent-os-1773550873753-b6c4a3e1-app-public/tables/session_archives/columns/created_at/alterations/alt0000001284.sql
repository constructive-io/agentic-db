-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/created_at/alterations/alt0000001284




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
    ALTER COLUMN created_at DROP DEFAULT;



