-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/grants/authenticated/update/grant


REVOKE UPDATE (is_banned, is_approved, is_verified, is_disabled, granted) ON "agent-os-1773551593867-bac64076-memberships-public".app_memberships FROM authenticated;


