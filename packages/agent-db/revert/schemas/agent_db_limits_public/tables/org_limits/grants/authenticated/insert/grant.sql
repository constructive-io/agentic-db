-- Revert: schemas/agent_db_limits_public/tables/org_limits/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_limits_public".org_limits FROM authenticated;


