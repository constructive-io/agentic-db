-- Verify: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/grants/authenticated/insert/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-app-public.expense_contacts', 'insert', 'authenticated');


