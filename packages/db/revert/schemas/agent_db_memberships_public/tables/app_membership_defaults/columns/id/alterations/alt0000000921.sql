-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/id/alterations/alt0000000921


ALTER TABLE "agent_db_memberships_public".app_membership_defaults 
  ALTER COLUMN id DROP NOT NULL;


