-- Revert: schemas/agent_db_limits_public/tables/org_limits/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_limits_public".org_limits FROM authenticated;


