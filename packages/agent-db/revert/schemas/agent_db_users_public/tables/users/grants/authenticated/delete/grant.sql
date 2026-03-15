-- Revert: schemas/agent_db_users_public/tables/users/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_users_public.users FROM authenticated;


