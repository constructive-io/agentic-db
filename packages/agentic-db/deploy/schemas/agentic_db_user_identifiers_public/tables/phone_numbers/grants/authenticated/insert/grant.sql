-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


GRANT INSERT (cc, number, owner_id, is_primary) ON agentic_db_user_identifiers_public.phone_numbers TO authenticated;

