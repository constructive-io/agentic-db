-- Verify: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_user_identifiers_public.emails', 'delete', 'authenticated');


