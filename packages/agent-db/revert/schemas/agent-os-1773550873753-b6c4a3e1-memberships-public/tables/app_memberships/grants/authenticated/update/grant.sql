-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/grants/authenticated/update/grant


REVOKE UPDATE (is_banned, is_approved, is_verified, is_disabled, granted) ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships FROM authenticated;


