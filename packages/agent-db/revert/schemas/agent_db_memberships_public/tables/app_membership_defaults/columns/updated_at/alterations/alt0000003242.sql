-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/updated_at/alterations/alt0000003242


ALTER TABLE "agent_db_memberships_public".app_membership_defaults 
  ALTER COLUMN updated_at DROP DEFAULT;


