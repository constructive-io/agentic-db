-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_memberships_public".app_membership_defaults FROM authenticated;


