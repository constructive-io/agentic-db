-- Deploy: schemas/agentic_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/contact_id/column


ALTER TABLE agentic_db_app_public.interactions 
  ALTER COLUMN contact_id SET NOT NULL;

