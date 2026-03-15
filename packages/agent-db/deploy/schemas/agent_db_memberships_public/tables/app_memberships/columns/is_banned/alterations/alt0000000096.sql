-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000000096
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_banned/column


ALTER TABLE agent_db_memberships_public.app_memberships 
  ALTER COLUMN is_banned SET NOT NULL;

