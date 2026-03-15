-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/updated_at/alterations/alt0000000160
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/updated_at/column


ALTER TABLE agent_db_memberships_public.app_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

