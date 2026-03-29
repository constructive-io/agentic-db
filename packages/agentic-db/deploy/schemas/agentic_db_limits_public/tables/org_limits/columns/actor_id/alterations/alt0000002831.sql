-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/columns/actor_id/alterations/alt0000002831
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_limits_public/tables/org_limits/columns/actor_id/column


ALTER TABLE agentic_db_limits_public.org_limits 
  ALTER COLUMN actor_id SET NOT NULL;

