-- Revert: schemas/agent_db_memberships_public/tables/membership_types/columns/name/alterations/alt0000001722


ALTER TABLE "agent_db_memberships_public".membership_types 
  ALTER COLUMN name DROP NOT NULL;


