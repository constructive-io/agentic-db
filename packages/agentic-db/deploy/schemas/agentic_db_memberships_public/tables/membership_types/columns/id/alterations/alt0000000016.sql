-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/columns/id/alterations/alt0000000016
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/columns/id/column


ALTER TABLE "agentic_db_memberships_public".membership_types 
  ALTER COLUMN id SET NOT NULL;

