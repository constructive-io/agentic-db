-- Revert: schemas/agent_db_memberships_public/tables/membership_types/columns/description/column


ALTER TABLE "agent_db_memberships_public".membership_types 
  DROP COLUMN description RESTRICT;


