-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_user_identifiers_public".phone_numbers FROM authenticated;


