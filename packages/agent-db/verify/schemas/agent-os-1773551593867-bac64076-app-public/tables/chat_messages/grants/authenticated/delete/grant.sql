-- Verify: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/grants/authenticated/delete/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-app-public.chat_messages', 'delete', 'authenticated');


