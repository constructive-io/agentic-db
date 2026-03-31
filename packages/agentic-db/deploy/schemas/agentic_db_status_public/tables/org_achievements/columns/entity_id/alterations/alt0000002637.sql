-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/entity_id/alterations/alt0000002637
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/entity_id/column


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN entity_id SET NOT NULL;

