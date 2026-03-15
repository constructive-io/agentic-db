-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/updated_at/alterations/alt0000000316
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/updated_at/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  ALTER COLUMN updated_at SET DEFAULT now();

