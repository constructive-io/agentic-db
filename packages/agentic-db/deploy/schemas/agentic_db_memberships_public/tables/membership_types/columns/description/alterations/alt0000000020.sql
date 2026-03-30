-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/columns/description/alterations/alt0000000020
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/columns/description/column


ALTER TABLE "agentic_db_memberships_public".membership_types 
  ALTER COLUMN description SET NOT NULL;

