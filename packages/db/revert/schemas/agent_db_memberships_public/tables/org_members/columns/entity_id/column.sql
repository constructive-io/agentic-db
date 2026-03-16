-- Revert: schemas/agent_db_memberships_public/tables/org_members/columns/entity_id/column


ALTER TABLE "agent_db_memberships_public".org_members 
  DROP COLUMN entity_id RESTRICT;


