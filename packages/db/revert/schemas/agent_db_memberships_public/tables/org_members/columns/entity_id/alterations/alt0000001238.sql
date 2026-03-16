-- Revert: schemas/agent_db_memberships_public/tables/org_members/columns/entity_id/alterations/alt0000001238


ALTER TABLE "agent_db_memberships_public".org_members 
  ALTER COLUMN entity_id DROP NOT NULL;


