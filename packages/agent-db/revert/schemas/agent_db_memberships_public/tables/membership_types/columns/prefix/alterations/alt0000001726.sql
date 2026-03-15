-- Revert: schemas/agent_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000001726


ALTER TABLE "agent_db_memberships_public".membership_types 
  ALTER COLUMN prefix DROP NOT NULL;


