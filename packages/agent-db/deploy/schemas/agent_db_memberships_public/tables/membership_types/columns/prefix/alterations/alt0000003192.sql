-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000003192
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/prefix/column


ALTER TABLE "agent_db_memberships_public".membership_types 
  ALTER COLUMN prefix SET NOT NULL;

