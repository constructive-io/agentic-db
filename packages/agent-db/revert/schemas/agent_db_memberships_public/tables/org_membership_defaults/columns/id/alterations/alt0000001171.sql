-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/id/alterations/alt0000001171


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  ALTER COLUMN id DROP NOT NULL;


