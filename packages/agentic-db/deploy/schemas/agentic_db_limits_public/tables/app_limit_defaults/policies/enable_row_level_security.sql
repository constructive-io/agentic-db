-- Deploy: schemas/agentic_db_limits_public/tables/app_limit_defaults/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/table


ALTER TABLE "agentic_db_limits_public".app_limit_defaults 
  ENABLE ROW LEVEL SECURITY;

