-- Revert: schemas/agent_db_memberships_public/tables/membership_types/columns/description/alterations/alt0000003190


ALTER TABLE "agent_db_memberships_public".membership_types 
  ALTER COLUMN description DROP NOT NULL;


