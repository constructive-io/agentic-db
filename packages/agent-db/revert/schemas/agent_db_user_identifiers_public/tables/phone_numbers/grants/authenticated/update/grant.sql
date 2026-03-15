-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/update/grant


REVOKE UPDATE (cc, number, owner_id, is_primary) ON agent_db_user_identifiers_public.phone_numbers FROM authenticated;


