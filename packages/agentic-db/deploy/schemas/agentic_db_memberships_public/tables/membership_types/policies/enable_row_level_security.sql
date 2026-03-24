-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table


ALTER TABLE "agentic_db_memberships_public".membership_types 
  ENABLE ROW LEVEL SECURITY;

