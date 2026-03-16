-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/created_at/alterations/alt0000001173


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  ALTER COLUMN created_at DROP DEFAULT;


