-- Verify: schemas/agentic_db_app_public/tables/deal_contacts/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.deal_contacts', 'select', 'authenticated');


