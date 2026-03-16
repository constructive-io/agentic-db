-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/entity_id/alterations/alt0000001249


ALTER TABLE "agent_db_memberships_public".org_admin_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


