-- Revert: schemas/agent_db_memberships_public/tables/membership_types/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_memberships_public".membership_types FROM authenticated;


