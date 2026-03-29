-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_user_identifiers_public.email_notes FROM authenticated;


