-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/updated_at/alterations/alt0000002780




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
    ALTER COLUMN updated_at DROP DEFAULT;



