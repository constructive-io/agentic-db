-- Revert: schemas/agentic_db_users_public/tables/users/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_users_public.users FROM authenticated;


