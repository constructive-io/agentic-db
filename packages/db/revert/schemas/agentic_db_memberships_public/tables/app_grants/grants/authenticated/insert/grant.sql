-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_memberships_public".app_grants FROM authenticated;


