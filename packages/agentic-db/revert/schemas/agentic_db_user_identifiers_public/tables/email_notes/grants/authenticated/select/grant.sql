-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_user_identifiers_public.email_notes FROM authenticated;


