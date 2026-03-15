-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/updated_at/alterations/alt0000003351
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/updated_at/column


ALTER TABLE "agent_db_memberships_public".app_admin_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

