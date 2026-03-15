-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/columns/created_at/alterations/alt0000002730




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
    ALTER COLUMN created_at DROP DEFAULT;



