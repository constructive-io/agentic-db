-- Revert: schemas/agent_db_memberships_public/tables/app_grants/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_memberships_public".app_grants FROM authenticated;


