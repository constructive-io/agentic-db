-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/name/alterations/alt0000000870
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/name/column


ALTER TABLE "agent_db_memberships_public".membership_types 
  ALTER COLUMN name SET NOT NULL;

