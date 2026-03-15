-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_user_identifiers_public.emails FROM authenticated;


