-- Deploy: schemas/agentic_db_limits_public/tables/org_limit_defaults/alterations/alt0000004522
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limit_defaults/table


ALTER TABLE agentic_db_limits_public.org_limit_defaults 
  DISABLE ROW LEVEL SECURITY;

