-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table


GRANT SELECT ON agentic_db_user_identifiers_public.crypto_addresses TO authenticated;

