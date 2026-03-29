-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_user_identifiers_public.email_recipients FROM authenticated;


