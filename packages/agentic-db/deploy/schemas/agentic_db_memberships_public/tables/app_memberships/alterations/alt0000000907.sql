-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/alterations/alt0000000907
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


ALTER TABLE "agentic_db_memberships_public".app_memberships 
  DISABLE ROW LEVEL SECURITY;

