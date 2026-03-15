-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/created_at/alterations/alt0000000065
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/created_at/column


ALTER TABLE agent_db_memberships_public.app_memberships 
  ALTER COLUMN created_at SET DEFAULT now();

