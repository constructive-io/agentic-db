-- Revert: schemas/agent_db_users_public/tables/users/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_users_public".users FROM authenticated;


