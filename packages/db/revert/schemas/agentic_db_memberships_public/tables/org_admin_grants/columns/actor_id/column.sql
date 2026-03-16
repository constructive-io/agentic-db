-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/actor_id/column


ALTER TABLE "agentic_db_memberships_public".org_admin_grants 
  DROP COLUMN actor_id RESTRICT;


