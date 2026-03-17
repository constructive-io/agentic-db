-- Deploy: schemas/agentic_db_app_public/tables/skills/alterations/alt0000001064
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE "agentic_db_app_public".skills 
  DISABLE ROW LEVEL SECURITY;

