-- Revert: schemas/agent_db_memberships_public/tables/membership_types/columns/id/column


ALTER TABLE "agent_db_memberships_public".membership_types 
  DROP COLUMN id RESTRICT;


