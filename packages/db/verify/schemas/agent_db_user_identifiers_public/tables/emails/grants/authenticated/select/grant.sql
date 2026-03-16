-- Verify: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_user_identifiers_public.emails', 'select', 'authenticated');


