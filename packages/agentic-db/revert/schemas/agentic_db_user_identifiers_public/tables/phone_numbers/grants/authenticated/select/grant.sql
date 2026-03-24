-- Revert: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_user_identifiers_public".phone_numbers FROM authenticated;


