-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/grants/authenticated/update/grant


REVOKE UPDATE (is_banned, is_approved, is_disabled, granted) ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships FROM authenticated;


