-- Revert: schemas/agent_db_limits_public/tables/org_limits/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_limits_public".org_limits FROM authenticated;


