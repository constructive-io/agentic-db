-- Deploy: schemas/agent_db_limits_public/tables/org_limits/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


ALTER TABLE agent_db_limits_public.org_limits 
  ENABLE ROW LEVEL SECURITY;

