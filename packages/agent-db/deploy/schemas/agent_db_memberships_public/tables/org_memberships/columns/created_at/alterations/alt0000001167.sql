-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/created_at/alterations/alt0000001167
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/created_at/column


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ALTER COLUMN created_at SET DEFAULT now();

