-- Revert: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/column


ALTER TABLE "agentic_db_memberships_public".org_members 
  DROP COLUMN entity_id RESTRICT;


