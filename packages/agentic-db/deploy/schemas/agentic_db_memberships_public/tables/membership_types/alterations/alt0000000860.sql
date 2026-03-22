-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/alterations/alt0000000860
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table


ALTER TABLE "agentic_db_memberships_public".membership_types 
  DISABLE ROW LEVEL SECURITY;

