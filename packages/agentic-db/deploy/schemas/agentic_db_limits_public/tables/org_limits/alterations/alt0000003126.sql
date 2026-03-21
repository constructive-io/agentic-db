-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/alterations/alt0000003126
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table


ALTER TABLE agentic_db_limits_public.org_limits 
  DISABLE ROW LEVEL SECURITY;

