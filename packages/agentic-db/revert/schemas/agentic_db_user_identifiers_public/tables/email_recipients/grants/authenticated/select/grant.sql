-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_user_identifiers_public.email_recipients FROM authenticated;


