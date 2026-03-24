-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/grants/authenticated/update/grant


REVOKE UPDATE (email, owner_id, is_primary) ON agentic_db_user_identifiers_public.emails FROM authenticated;


