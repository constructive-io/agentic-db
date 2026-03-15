-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/updated_at/alterations/alt0000002026


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  ALTER COLUMN updated_at DROP DEFAULT;


