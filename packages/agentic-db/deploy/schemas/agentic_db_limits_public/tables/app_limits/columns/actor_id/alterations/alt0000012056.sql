-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/columns/actor_id/alterations/alt0000012056
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table
-- requires: schemas/agentic_db_limits_public/tables/app_limits/columns/actor_id/column


ALTER TABLE agentic_db_limits_public.app_limits 
  ALTER COLUMN actor_id SET NOT NULL;

