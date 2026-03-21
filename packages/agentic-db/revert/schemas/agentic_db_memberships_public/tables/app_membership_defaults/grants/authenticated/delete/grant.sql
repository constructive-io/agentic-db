-- Revert: schemas/agentic_db_memberships_public/tables/app_membership_defaults/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_memberships_public".app_membership_defaults FROM authenticated;


