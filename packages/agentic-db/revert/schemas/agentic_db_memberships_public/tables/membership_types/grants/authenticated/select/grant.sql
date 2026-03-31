-- Revert: schemas/agentic_db_memberships_public/tables/membership_types/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_memberships_public".membership_types FROM authenticated;


