-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/id/alterations/alt0000000016
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/id/column


ALTER TABLE agent_db_memberships_public.membership_types 
  ALTER COLUMN id SET NOT NULL;

