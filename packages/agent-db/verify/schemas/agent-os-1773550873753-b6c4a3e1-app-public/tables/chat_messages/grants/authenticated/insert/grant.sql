-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-app-public.chat_messages', 'insert', 'authenticated');


