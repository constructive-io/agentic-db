-- Revert: schemas/agent_db_memberships_public/tables/membership_types/columns/id/alterations/alt0000000868


ALTER TABLE "agent_db_memberships_public".membership_types 
  ALTER COLUMN id DROP NOT NULL;


