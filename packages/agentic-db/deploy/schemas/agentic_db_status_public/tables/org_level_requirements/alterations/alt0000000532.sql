-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/alterations/alt0000000532
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table


ALTER TABLE "agentic_db_status_public".org_level_requirements 
  DISABLE ROW LEVEL SECURITY;

