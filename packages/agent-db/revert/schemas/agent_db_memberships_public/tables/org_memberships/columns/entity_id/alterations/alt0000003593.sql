-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/entity_id/alterations/alt0000003593


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN entity_id DROP NOT NULL;


