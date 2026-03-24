-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/columns/entity_id/alterations/alt0000001627
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_limits_public/tables/org_limits/columns/entity_id/column


ALTER TABLE agentic_db_limits_public.org_limits 
  ALTER COLUMN entity_id SET NOT NULL;

