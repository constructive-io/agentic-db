-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_user_identifiers_public.phone_numbers FROM authenticated;


