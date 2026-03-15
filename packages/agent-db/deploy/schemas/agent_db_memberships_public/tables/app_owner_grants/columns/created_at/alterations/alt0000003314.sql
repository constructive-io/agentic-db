-- Deploy: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/created_at/alterations/alt0000003314
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/created_at/column


ALTER TABLE "agent_db_memberships_public".app_owner_grants 
  ALTER COLUMN created_at SET DEFAULT now();

