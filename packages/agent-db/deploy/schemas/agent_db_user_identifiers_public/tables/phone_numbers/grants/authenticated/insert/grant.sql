-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


GRANT INSERT (cc, number, owner_id, is_primary) ON agent_db_user_identifiers_public.phone_numbers TO authenticated;

