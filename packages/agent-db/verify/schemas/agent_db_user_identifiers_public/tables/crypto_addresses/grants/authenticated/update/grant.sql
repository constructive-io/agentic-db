-- Verify: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_user_identifiers_public.crypto_addresses', 'update', 'authenticated');


